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
   f1.print ip_rand,"--",time,dir_random,number_rand,"\"-\"",browser_type
   f1.print ip_rand,"--",time,errorcode,"\"-\"","\"-\""
   $x=$x+1
 end
 $y=0
 while $y<array[1]
   File.open('errorlog.rb', 'w') do |f2|
   f2.print time,"[error]",number_rand,"#0: ","bind() to ",number_rand,"failed",number_rand,":", word_rand
   f2.print time,"[error]",number_rand,"#0: ","bind() to ",number_rand,"---process request time: ",number_rand,"ms--- client: ",ip_rand,"server:",URL,"request:",dir_random

   $y=$y+1
 end

