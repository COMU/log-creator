load '../functions.rb'
$now=Time.now

line_count=IO.readlines('line_count.txt')
count=line_count[0].chop!.to_i

i=0
while i<count
  ipCreator
  timeCreator
  requestCreator
  directoryCreator
  messageCodeCreator
  sizeCreator
  addressCreator
  userAgentCreator
  i=i+1
end 

