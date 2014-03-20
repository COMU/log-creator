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
k=0
while k<line1[1]
  $a=line2[rand(0..line2[1])]
  #$b=j[rand(0..j.length)]
  #Connection attempt:
  puts time_rand, '[pid ',number_rand,']','CONNECT: Client " ',ip_rand,'"'
  #Failed login:
  puts time_rand,'[pid',number_rand,']','FAIL LOGIN : Client "',ip_rand,'"'
  #Login ok:
  puts time_rand,'[pid',number_rand,']','[dcid] OK LOGIN : Client "',ip_rand
  #Anonymous login :
  puts time_rand,'[pid',number_rand,']','[ftp] OK LOGIN : Client "',ip_rand , 'anon password "',word_rand,'@"'
  #File upload :
  puts time_rand,'[pid',number_rand,']','[xx] OK UPLOAD : Client "',ip_rand,'"/',word_rand,'.',extension,a,'MB"'#extension yerine $b yazdırılabilir
  k=k+1
end
    
