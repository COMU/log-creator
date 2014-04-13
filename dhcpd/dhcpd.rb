load '../functions.rb'
pot=IO.readlines("dhcpd.conf")
func=Parts.new
array=Array.new
show=Array.new
show1=Array.new
show2=Array.new
array=pot[0]
show=array.split("=")
show[1]=show[1].to_i
$i=0
while $i<show[1]
  array=pot[3]
  show1=array.split(",")
  $d=func.time_rand
  $d=$d.to_i
  array=pot[2]
  show2=array.split("=")
  show2[1]=show2[1].to_i
  later=show2[1]+ $d
  result=Time.at(later)
  $d=Time.at($d)
  $b=show1[rand(0..show1.length)]
  $a=rand(1..10)
  $c=192.168
  $e=rand(0..255)
  print "lease"," ",func.ip_rand," ","{"," ","\n"
  print "          ","starts"," ",$a," ",$d,";","\n"
  print "          ","ends"," ",$a," ",result,";","\n"
  print "          ","hardware ethernet"," ",$c,".1.",$e,";","\n"
  print "          ","uid"," ","01",":",$c,".1.",$e,";","\n"
  print "          ","client-hostname"," ",'"',$b,'"',";","\n"
  print "}","\n"
  $i=$i+1
end
