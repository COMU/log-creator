#!/usr/bin/env ruby

load '../functions.rb'
require 'optparse'

class Qmail_Log < Parts
#format: 'TIMESTAMP rblsmtpd: 1.2.3.4 pid 27730: 451 message'
  def rblsmtpd(number)
    i=0
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} rblsmtpd: #{obj.ip_rand()} pid #{obj.port()}: #{obj.number_rand()} Send mail to #{obj.word_rand()} #{obj.mail_rand()} #{time_rand()}"
    i=i+1
    end
  end

#format: 'TIMESTAMP tcpserver: status 3/50'  
  def tcpserver1(number)
    i=0
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} tcpserver: status: #{obj.fraction_rand()}"
      i=i+1
    end
  end
  
#format: 'TIMESTAMP tcpserver: pid 27730 from 1.2.3.4'
  def tcpserver2(number)
    i=0
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} tcpserver: pid #{obj.port()} from #{obj.ip_rand()}"
      i=i+1
    end
  end
 
#format: 'TIMESTAMP tcpserver: ok 27730 myhostname:myip:myport hostname:ip:ident:port'
  def tcpserver3(number)
    i=0
    array = ['ok', 'deny']
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} tcpserver: #{array.sample} #{obj.word_rand()}:#{obj.ip_rand()}:#{obj.port()} #{obj.word_rand()}:#{obj.ip_rand()}:#{obj.port()}"
      i=i+1
    end
  end

#format: 'TIMESTAMP info msg 12345: bytes 3189 from <sender@domain.xyz> qp 27763 uid 46'
  def qmail_send(number)
    i=0
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} info msg #{obj.number_rand()}: bytes #{obj.number_rand()} from <#{obj.mail_rand()}> qp #{obj.number_rand()} uid #{obj.number_rand()}"
      i=i+1
    end
  end
  
#format: 'TIMESTAMP jgreylist[27730]: 1.2.3.4 DENY no reverse DNS'
  def jgreylist(number)
    i=0
    array = ['OK known', 'DENY no reverse DNS', 'GREY first time', 'GREY too soon']
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} jgreylist[#{obj.number_rand()}]: #{obj.ip_rand()} #{array.sample}"
      i=i+1
    end
  end
  
#format: 'TIMESTAMP qmail-smtpd[12345]: Received-SPF: unknown (myhostname: ...)'
  def spf(number)
    i=0
    array = ['pass', 'none', 'unknown', 'neutral', 'softfail', 'fail', 'error']
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} qmail-smtpd[[#{obj.number_rand()}]: Received-SPF: #{array.sample} #{obj.word_rand()}:#{obj.ip_rand()}:#{obj.port()}"
      i=i+1
    end
  end
  
#format: 'TIMESTAMP qmail-smtpd[12345]: before greeting: [1.2.3.4] client disconnected'
  def greetdelay(number)
    i=0
    array = ['disconnected', 'sent data']
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} qmail-smtpd[[#{obj.number_rand()}]: before greeting: [#{obj.ip_rand()}] client #{array.sample}"
      i=i+1 
    end
  end

#format: 'TIMESTAMP qmail-smtpd[12345]: AUTH successful [1.2.3.4] user@domain.xyz'
  def auth(number)
    i=0
    array=['failed','successful']
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} qmail-smtpd[[#{obj.number_rand()}]: AUTH #{array.sample} [#{obj.ip_rand()}] <#{obj.mail_rand()}>"
      i=i+1
    end
  end

#format: 'TIMESTAMP qmail-smtpd[12345]: MAIL FROM:<email@domain.xyz>'
  def mailrcpt(number)
   i=0
    array=['MAIL FROM', 'RCPT TO']
    while i<number
      obj = Parts.new
      puts "@#{obj.time_rand().to_i} qmail-smtpd[[#{obj.number_rand()}] #{array.sample} <#{obj.mail_rand()}>"
      i=i+1
    end
  end 
end

array = ['rblsmtpd', 'tcpserver1', 'qmail_send', 'tcpserver2', 'tcpserver3', 'jgreylist', 'spf', 'greetdelay', 'auth', 'mailrcpt']
text_file=File.open('qmail.conf')
    file = text_file.readlines()
    text_file.close

options = {:file => nil}
optparse = OptionParser.new do |opts|
  opts.banner = "Usage: file.rb [options]"

  opts.on('-f', '--file') do |file|
    options[:file] = file
  end
 
  opts.on('-h', '--help') do |help|
    puts opts
  end

  opts.on('-p', '--process') do |process|
    if file.include? array[2]
      puts 'type: qmail-send log' 
    else
      puts 'type: smtpd log'
    end
  end 
    
end

optparse.parse!

if options[:file]
  exec("ruby qmail.rb > qmail.txt")
end

text_file=File.open('qmail.conf')
file = text_file.readlines()
text_file.close

i=0
first_line = file[0]
array1= Array.new
first_line.each_line(' '){
|s|
array1[i]=s
i=i+1
}

j=0
second_line = file[1]
array2= Array.new
second_line.each_line(' '){
|s|
array2[j]=s
j=j+1
}

obj = Qmail_Log.new
  if array1[0].include? 'rblsmtpd'
    obj.rblsmtpd(array2[0].to_i)
  end
  
  if array1[1].include? 'tcpserver1'
    obj.tcpserver1(array2[1].to_i)
  end
  
  if array1[2].include? 'tcpserver2'
    obj.tcpserver2(array2[2].to_i)
  end
  
  if array1[3].include? 'tcpserver3'  
    obj.tcpserver3(array2[3].to_i)
  end
 
  if array1[4].include? 'jgreylist'
    obj.jgreylist(array2[4].to_i)
  end

  if array1[5].include? 'spf'
    obj.spf(array2[5].to_i)
  end

  if array1[6].include? 'greetdelay'
    obj.greetdelay(array2[6].to_i)
  end

  if array1[7].include? 'auth'
    obj.auth(array2[7].to_i)
  end

  if array1[8].include? 'mailrcpt'
    obj.mailrcpt(array2[8].to_i)
  end

