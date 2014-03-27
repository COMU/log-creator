load '../functions.rb'
pot=IO.readlines("dhcpd.conf")
func=Parts.new
array=Array.new
show=Array.new
show1=Array.new
array=pot[0]
show=array.split("=")
show[1]=show[1].to_i
$i=0
while $i<show[1]
  array=pot[1]
  show1=array.split(",")
  $b=show1[rand(0..show1.length)]
  $a=rand(1..10)
  print "lease"," ",func.ip_rand,"{"," ","\n"
  print "          ","starts"," ",$a," ",func.time_rand,";","\n"
  print "          ","ends"," ",$a," ",func.time_rand,";","\n"
  print "          ","hardware ethernet"," ",func.mac_address,";","\n"
  print "          ","uid"," ","01:",func.mac_address,";","\n"
  print "          ","client-hostname"," ",'"',$b,'"',";","\n"
  print "}","\n"
  $i=$i+1
end
