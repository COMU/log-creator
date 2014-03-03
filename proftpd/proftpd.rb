load '../functions.rb'
array=Array.new
line=""
pot=IO.readlines("data.txt")
array=pot[1]
array=line.split(" ")
$i=0
$a=word_rand
while $i<array[0]
   File.open('proftpd.log', 'w') do |f1|
   if $i<1
     f1.print time_rand,a,"proftpd","[",number_rand,"]",a,"(",word_rand,":","ProFTPD 1.3.4a (maint) (built",time_rand,"UTC) standalone mode STARTUP"
   end
   f1.print time_rand,a,"proftpd","[",number_rand,"]",a,"(",word_rand,"[",ip_rand,"]):",connection_rand
   $i=$i+1
end
