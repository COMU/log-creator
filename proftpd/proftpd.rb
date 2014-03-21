load '../functions.rb'
pot=IO.readlines("proftpd.conf")
func=Parts.new
show=Array.new
show1=Array.new
show2=Array.new
show3=Array.new
show4=Array.new
array=Array.new
array=pot[0]
show=array.split("=")
show[1]=show[1].to_i
$i=0
while $i<show[1]
   array=pot[1]
   show1=array.split(",")
   $a=show1[rand(0..show1.length)]
   array=pot[2]
   show2=array.split(",")
   $b=show2[rand(0..show2.length)]
   array=pot[3]
   show3=array.split(",")
   $c=show3[rand(0..show3.length)]
   array=pot[4]
   show4=array.split("=")
   show4[1]=show4[1].to_i
   $m=[rand(0..show4[1])]
   File.open('proftpd.log','w') do |f1|
   if $i<1
     print func.time_rand," ",$a," ","proftpd","[",func.number_rand,"]"," ",$a," ","(",func.word_rand,":","ProFTPD 1.3.4a (maint) (built",func.time_rand,"UTC) standalone mode STARTUP"
     $i=$i+1
   end
   print func.time_rand," ",$a," ","proftpd","[",func.number_rand,"]"," ",$a," ","(",$b,"):",func.connection_rand
   print func.time_rand," ",$a," ","proftpd","[",func.number_rand,"]"," ",$a," ","(",$b,"):"," ",$c," "," ",$m,"MB"
   $i=$i+1
end
end
