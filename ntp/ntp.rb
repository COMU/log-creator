load "../functions.rb"
arr=IO.readlines('ntp.conf')
line1=Array.new
line2=Array.new
line1=arr[0].split("=")
line1[1]=line1[1].to_i
j=Array.new
j=arr[2].split(",")
#ntpd logs
func = Parts.new
k=0
while k<line1[1]
  $b=j[rand(0..j.length)]
  print " "
  print func.time_rand," ",'ntpd[',func.number_rand,']:',$b," "
  puts " "
  k=k+1
end
