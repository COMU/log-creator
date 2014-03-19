load '../functions.rb'
array=Array.new
array1=Array.new
array2=Array.new
array3=Array.new
line=""
pot=IO.readlines("proftpd.conf")
array=pot[1]
array=line.split("=")
array[1]=array[1].to_i
$i=0
while $i<array[1]
   array1=pot[2]
   array1=line.split(",")
   $a=array1[rand(0..array1.length)]
   array2=pot[3]
   array2=line.split(",")
   $b=array2[rand(0..array2.length)]
   array3=pot[4]
   array3=line.split(",")
   $c=array3[rand(0..array3.length)]
   array4=pot[5]
   array4=line.split("=")
   array4[1]=array4[1].to_i
   $m=[rand(0..array4[1])]
   File.open('proftpd.log', 'w') do |f1|
   if $i<1
     f1.print time_rand,$a,"proftpd","[",number_rand,"]",$a,"(",word_rand,":","ProFTPD 1.3.4a (maint) (built",time_rand,"UTC) standalone mode STARTUP"
   end
   f1.print time_rand,$a,"proftpd","[",number_rand,"]",$a,"(",$b,"):",connection_rand
   
   f1.print time_rand,$a,"proftpd","[",number_rand,"]",$a,"(",$b,"):",$c,$m,"MB"
   $i=$i+1
end
