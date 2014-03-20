load "../functions.rb"
arr=IO.readlines('vsftp.conf')
line1=Array.new
line2=Array.new
line1=arr[0].split("=")
line2=arr[1].split("=")
line1[1]=line1[1].to_i
line2[1]=line2[1].to_i
#line3=Array.new
#j=Array.new
#line3=arr[2].split("=")
#j=line3[1].split(",")
#vsftpd logs
func = Parts.new
k=0
while k<line1[1]
  $a=rand(0..line2[1])
  #$b=j[rand(0..j.length)]
  #Connection attempt:
  print func.time_rand, '[pid ',func.number_rand,']','CONNECT: Client " ',func.ip_rand,'"'
  #Failed login:
  print func.time_rand,'[pid',func.number_rand,']','FAIL LOGIN : Client "',func.ip_rand,'"'
  #Login ok:
  print func.time_rand,'[pid',func.number_rand,']','[dcid] OK LOGIN : Client "',func.ip_rand,'"'
  #Anonymous login :
  print func.time_rand,'[pid',func.number_rand,']','[ftp] OK LOGIN : Client "',func.ip_rand , 'anon password "',func.word_rand,'@"'
  #File upload :
  print func.time_rand,'[pid',func.number_rand,']','[xx] OK UPLOAD : Client "',func.ip_rand,'"/',func.word_rand,'.',func.extension,' ',$a,' ', 'MB"'#extension yerine $b yazdırılabilir
  k=k+1
end
