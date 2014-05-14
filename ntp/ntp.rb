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
#$c=arr2[rand(0..arr2.length)]
#ntpd logs
func = Parts.new
k=0
while k<line1[1]
  $b=j[rand(0..j.length)]
  print func.time_rand," ",'ntpd[',func.number_rand,']:',arr2[0],"\n "
  print func.time_rand," ",'ntpd[',func.number_rand,']:',$b,"\n "
  print func.time_rand," ",'ntpd[',func.number_rand,']:',arr2[1],"\n "
  k=k+1
end
