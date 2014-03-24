load '../functions.rb'
arr = IO.readlines('itemfile.txt')
read=""
line=Array.new
read=arr[1]
line=read.split(" ")
item=line[0].to_i
item1=line[1].to_i
func = Parts.new
#access log 
k=0
while k<item
  File.open('access.log', 'w') do |file1|
  file1.print func.ip_rand,"--",func.time_rand,func.dir_random,func.number_rand,"\"-\"",func.browser_type
  File.open('access.log', 'w') do |file2|
  file2.print func.ip_rand,"--",func.time_rand,func.browser_type,"\"-\"","\"-\""
  k=k+1
end
#error log 
j=0
while j<item1
  File.open('error.log', 'w') do |file3|
  file3.print func.time_rand,"(server.c.",func.number_rand,") server stopped by UID = 0",func.port
  File.open('error.log', 'w') do |file4|
  file4.print func.time_rand ,"(log.c.",func.number_rand,")server started"
  j=j+1
end

