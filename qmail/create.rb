#!/usr/bin/env ruby
load 'qmail.rb'

obj = Qmail_Log.new
obj.rblsmtpd(2)
#obj.tcpserver1(2)
#obj.tcpserver2(2)
#obj.tcpserver3(3)
#obj.jgreylist(1)
#obj.spf(4)
#obj.greetdelay(1)
#obj.auth(2)
#obj.mailrcpt(1)
