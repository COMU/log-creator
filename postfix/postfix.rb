#!/usr/bin/env ruby
load '../functions.rb'

#Jan 20 06:47:57 zarafa postfix/smtpd[21751]: disconnect from mail.thuis.mydomain.net[192.168.25.17]
class Postfix_Log < Parts
  def postfix_smtpd(number)
    i=0
    array=['disconnected','connected']
    while i<number
      obj = Parts.new
      puts "#{obj.time_rand()} #{obj.word_rand()} postfix/smtpd[#{obj.number_rand()}]: #{array.sample} from #{obj.URL()}[#{obj.ip_rand()}]"
      i=i+1
    end
  end
  
#Jan 20 06:47:58 zarafa postfix/lmtp[21756]: A1749428: to=<gert@mydomain.net>, orig_to=<gert@zarafa.thuis.mydomain.net>, relay=localhost[127.0.0.1]:2003, delay=0.5, delays=0.15/0.01/0.08/0.26, dsn=2.1.5, status=sent (250 2.1.5 gert@mydomain.net Ok)
# 'delays=0.15/0.01/0.08/0.26, dsn=2.1.5, status=sent' kısmı yeniden düzenlenecek!!'
  def postfix_lmtp(number)
    i=0
    while i<number
      obj = Parts.new
      puts "#{obj.time_rand()} #{obj.word_rand()} postfix/lmtp[#{obj.number_rand()}]: A1749428: to=<#{obj.mail_rand()}>, #{obj.word_rand()}@#{obj.URL()}>, relay=localhost[127.0.0.1]:#{obj.port()}, delays=0.15/0.01/0.08/0.26, dsn=2.1.5, status=sent"
    i=i+1
    end  
  end
end

