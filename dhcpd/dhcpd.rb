  load '../functions.rb'
  pot=IO.readlines("dhcpd.conf")
  func=Parts.new
  array=Array.new
  show=Array.new
  show1=Array.new
  show2=Array.new
  show3=Array.new
  array=pot[0]
  show=array.split("=")
  show[1]=show[1].to_i
  $i=0
  l=0
  e=func.unique_ip
  f=func.unique_ip
  m=func.unique_ip
  t=func.unique_ip
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
    s=f[l]
    k=m[l]
    z=t[l]
    $g=func.mac_address
    array=pot[1]
    show3=array.split("/")
    show3[1]=show3[1].to_i
    if show3[1]==24
      z=192
      s=1
      k=168
    end
    if show3[1]==16
      z=192
      k=168
    end
    if show3[1]==8
      z=192
    end
    if l==255
      l=0
    end
    print "lease"," ",z,".",k,".",s,".",e[l]," ","{"," ","\n"
    print "          ","starts"," ",$a," ",$d,";","\n"
    print "          ","ends"," ",$a," ",result,";","\n"
    print "          ","hardware ethernet"," ",$g,";","\n"
    print "          ","uid"," ","01",":",$g,";","\n"
    print "          ","client-hostname"," ",'"',$b,'"',";","\n"
    print "}","\n"
    $i=$i+1
    l=l+1
  end
