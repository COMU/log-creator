load '../functions.rb'
arr = IO.readlines('itemfile.txt')
read=""
line=Array.new
read=arr[1]
line=read.split(" ")
item=line[0].to_i
item1=line[1.to_i]
#access log 
k=0
while k<item
  File.open('access.log', 'w') do |file1|
  file1.print ip_rand,"--",time_rand,dir_random,number_rand,"\"-\"",browser_type
  File.open('access.log', 'w') do |file2|
  file2.print ip_rand,"--",time_rand,browser_type,"\"-\"","\"-\""
  k=k+1
end
#error log 
j=0
while j<item1
  File.open('error.log', 'w') do |file3|
  file3.print time_rand,"(server.c.",number_rand,") server stopped by UID = 0",port
  File.open('error.log', 'w') do |file4|
  file4.print time_rand ,"(log.c.",number_rand,")server started"
  j=j+1
end

