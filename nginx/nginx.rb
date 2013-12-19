 load '../functions.rb'


 array=Array.new
 line=""
 pot=IO.readlines("request.txt")
 array=pot[1]
 array=line.split(" ")
 $i=0
 $x=0
 while $x<array[0]
   File.open('access.log', 'w') do |f1|
   f1.print ip_rand,"--",time,dir_random,number_rand,"\"-\"",scanner
   File.open('access.log', 'w') do |f2|
   f2.print ip_rand,"--",time,errorcode,"\"-\"","\"-\""
   $x=$x+1
 end
 $y=0
 while $y<array[1]
   File.open('errorlog.rb', 'w') do |f3|
   f3.print time,"(server.c.",number_rand,") server stopped by UID = 0",port
   File.open('errorlog.rb', 'w') do |f4|
   f4.print time,"(log.c.",number_rand,")server started"
   $y=$y+1
 end
