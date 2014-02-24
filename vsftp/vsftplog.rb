#küçük düzeltilecek yerler var 
load '../functions.rb'
arr = IO.readlines('item.txt')
read=""
line=Array.new
read=arr[1]
item=read.to_i
#vsftpd logs
k=0
while k<item 
  #Connection attempt:
  print time_rand, '[pid ',number_rand,']','CONNECT: Client " ',ip_rand,'"'
  #Failed login:
  print time_rand,'[pid',number_rand,']','FAIL LOGIN : Client "',ip_rand,'"'
  #Login ok:
  print time_rand,'[pid',number_rand,']','[dcid] OK LOGIN : Client "',ip_rand
  #Anonymous login :
  print time_rand,'[pid',number_rand,']','[ftp] OK LOGIN : Client "',ip_rand , 'anon password "-----@"' #tarayıcı ya da sunucu isimleriyle tamamlanacak sanırım "----" olan kısımda 
  #File upload :
  print time_rand,'[pid',number_rand,']','[xx] OK UPLOAD : Client "',ip_rand,'"/' #dosya isimleri ve boyutları üretilerek tamamlanacak 
  k=k+1
end
