load '../functions.rb'
pot=IO.readlines("dhcpdv6.conf")
func=Parts.new
array=Array.new
show=Array.new
array=pot[0]
show=array.split("=")
show[1]=show[1].to_i
$i=0
array1=Array.new
array1=["expired","state"]
array2=Array.new
array2=["30","31","32"]
array3=Array.new
array3=["R","K","Q","r"]
array4=Array.new
array4=["02","10","11","12","13","14","15","20"]
$g=rand(200..300)
$l=rand(200..300)
$c=rand(2000..3000)
$e=rand(3000..5000)
$z=(1..4).map{"%0.4x"%rand(256)}.join(":")
while $i<show[1]
  if $i==0
    $d=func.time_rand
  end
  $t=(1..2).map{"%0.4x"%rand(256)}.join(":")
  $d=$d.to_i
  array=pot[1]
  show2=array.split("=")
  show2[1]=show2[1].to_i
  later=show2[1]+ $d
  result=Time.at(later)
  $d=Time.at($d)
  $a=rand(1..10)
  $f=func.time_rand
  if $i==0
    print "\n"
    print "server-duid"," ",'"',"\\000\\001\\000\\001\\","0",array2[rand(0..2)],"\\",rand(200..300),array3[rand(0..4)],"\\",rand(200..300),"\\","000\\","0",rand(200..300),"\\",rand(200..300),"\\",rand(3000..4000),'"',";","\n"
  end
  print "\n"
  print "ia-na"," ",'"',"/\\",$g,"\\",$l,"\\","0",array4[rand(0..7)],"\\","000\\001\\000\\001\\0",array2[rand(0..2)],array3[rand(0..4)],"\\0",array4[rand(0..7)],"\\",$l,"/\\",$g,"\\",rand(3000..4000),'"',";","\n"
  print "  ","cltt"," ",$a," ",$d,";","\n"
  print "  ","iaaddr"," ",$z,":",$t,"{","\n"
  print "    ","binding state"," ",array1[rand(0..1)],";","\n"
  print "    ","preferred-life"," ",$c,"\n"
  print "    ","max-life"," ",$e,"\n"
  print "    ","ends"," ",$a," ",result,";","\n"
  print "  ","}","\n"
  print "}","\n"
  print "\n"

  $i=$i+1
  $d=$d.to_i
  $d=4800+ $d
  $d=Time.at($d)
end

