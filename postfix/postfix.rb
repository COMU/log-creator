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
end
