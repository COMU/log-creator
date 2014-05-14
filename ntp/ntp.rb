load "../functions.rb"
arr=IO.readlines('ntp.conf')
line1=Array.new
line2=Array.new
line1=arr[0].split("=")
line1[1]=line1[1].to_i
j=Array.new
j=arr[2].split(",")
arr2=["kernel time sync status change 2001 ",
       "kernel time sync status 2040 "]
arr3=["0.0.0.0 c016 06 restart","0.0.0.0 c012 02 freq_set kernel 0.000 PPM","0.0.0.0 c011 01 freq_not_set","0.0.0.0 c514 04 freq_mode","0.0.0.0 c618 08 no_sys_peer","0.0.0.0 0613 03 spike_detect"]
arr4=["Deleting interface #2 eth0","Deleting interface #3 lo","Deleting interface #4 eth1","Deleting interface #5 tap0","Deleting interface #6 eth3"," Deleting interface #7 br0"]
arr5=["Listening on interface #0 wildcard","Listening on interface #1 wildcard","Listening on interface #2 eth0"," Listening on interface #3 eth1"," Listening on interface #4 eth3","Listening on interface #5 lo"," Listening on interface #6 tap0","Listening on interface #7 br0"]
arr6=["ntp.ulakbim.gov.tr","0.tr.pool.ntp.org"]
$l = Random.rand(-1..1)
$at=Random.rand(1..20)
#$c=arr2[rand(0..arr2.length)]
#ntpd logs
func = Parts.new
k=0
m=0
t=0
s=0
y=0
while k<line1[1]
  $b=j[rand(0..j.length)]
  $d=arr3[rand(0..arr3.length)]
  print func.time_rand," ",'ntpd[',func.number_rand,']:',arr2[0],"\n "
  print func.time_rand," ",'ntpd[',func.number_rand,']:',$b,"\n "
  print func.time_rand," ",'ntpd[',func.number_rand,']:',arr2[1],"\n "
  while m<arr3.length
  print func.time_rand," ",'ntpd[',func.number_rand,']:',arr3[m],"\n "
  m=m+1
  end
  print func.time_rand," ",'ntpd[',func.number_rand,']:',"0.0.0.0 0612 02 freq_set kernel-",func.number_rand," ","PPM","\n"
  print func.time_rand," ",'ntpd[',func.number_rand,']:',"0.0.0.0 061c 0c clock_step -",$l, " s","\n"# l kısmı düelt 6 basamaklı -1 ile 1 arasında olmalı  
  while t<arr4.length
  print func.time_rand," ",'ntpd[',func.number_rand,']:',arr4[t]," ",func.mac_address,"#123"," ","interface stats: received=0, sent=0, dropped=0,", "active_time=",$at,"  secs","\n"
  t=t+1
  end
  while s<arr5.length
  print func.time_rand," ",'ntpd[',func.number_rand,']:',arr5[s]," ",func.mac_address," ","#123  Enabled","\n"
  print func.time_rand," ",'ntpd[',func.number_rand,']:',arr5[s]," ",func.ip_rand," ","#123 Enabled","\n"
  if arr5[s]==" Listening on interface #0 wildcard"
     print func.time_rand," ",'ntpd[',func.number_rand,']:',arr5[s]," ",func.ip_rand," ","#123 Disabled","\n"
  end
  s=s+1
  end
  while y<arr6.length
  print func.time_rand," ",'ntpd[',func.number_rand,']:',"host name not found EAI_NODATA:"," ",arr6[y],"\n"
  y=y+1
  end
  k=k+1
end
