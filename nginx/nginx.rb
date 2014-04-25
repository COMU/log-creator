 load '../functions.rb'
 func=Parts.new
 array=Array.new
 pot=IO.readlines("request.txt")
 array=pot[1]
 show=array.split(" ")
 $i=0
 $x=0
 show[0]=show[0].to_i
 show[1]=show[1].to_i
 while $x<show[0]
   print func.ip_rand,"--",func.time_rand,func.dir_random,func.number_rand,"\"-\"",func.browser_type,"\n"
   print func.ip_rand,"--",func.time_rand,func.error_code,"\"-\"","\"-\"","\n"
   $x=$x+1
 end
 $y=0
 while $y<show[1]
   print func.time_rand,"[error]",func.number_rand,"#0: ","bind() to ",func.number_rand,"failed",func.number_rand,":", func.word_rand,"\n"
   $y=$y+1
 end
