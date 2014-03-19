load '../functions.rb'
array=Array.new
array1=Array.new
array2=Array.new
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
   array2=pot[4]
   array2=line.split(",")
   $b=array2[rand(0..array2.length)]

   File.open('proftpd.log', 'w') do |f1|
   if $i<1
     f1.print time_rand,$a,"proftpd","[",number_rand,"]",$a,"(",word_rand,":","ProFTPD 1.3.4a (maint) (built",time_rand,"UTC) standalone mode STARTUP"
   end
   f1.print time_rand,$a,"proftpd","[",number_rand,"]",$a,"(",$b,"):",connection_rand
   $i=$i+1
end

