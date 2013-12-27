#!/usr/bin/env ruby
load 'postfix.rb'

obj = Postfix_Log.new
obj.postfix_smtpd(3)
