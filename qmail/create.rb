#!/usr/bin/env ruby
load 'qmail.rb'

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

