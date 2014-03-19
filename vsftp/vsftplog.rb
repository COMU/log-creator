load '../functions.rb'
array=Array.new
array1=Array.new
line=""
read=IO.readlines("vsftp.conf")
array=pot[1]
array=line.split("=")

#vsftpd logs
k=0
i=array[1].to_i
while k<i
  array1=read[2]
  array1=line.split("=")
  array1[1]=array1[1].to_i
  $a=array1[rand(0..array1[1])]
  #Connection attempt:
  print time_rand, '[pid ',number_rand,']','CONNECT: Client " ',ip_rand,'"'
  #Failed login:
  print time_rand,'[pid',number_rand,']','FAIL LOGIN : Client "',ip_rand,'"'
  #Login ok:
  print time_rand,'[pid',number_rand,']','[dcid] OK LOGIN : Client "',ip_rand
  #Anonymous login :
  print time_rand,'[pid',number_rand,']','[ftp] OK LOGIN : Client "',ip_rand , 'anon password "',word_rand,'@"'
  #File upload :
  print time_rand,'[pid',number_rand,']','[xx] OK UPLOAD : Client "',ip_rand,'"/',word_rand,'.',extension,a,'MB"'
  k=k+1
end
