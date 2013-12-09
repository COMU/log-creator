load "../functions.rb"

pv=[10,20] #preferecnce-value
$randpv = pv[Random.rand(0..1)]
$file = IO.readlines("./file.txt") #Dosyadan okuyup diziye atadi
i = 1
$howmucha = 0
$howmuchcname = 0
$howmuchmx = 0
$howmuchnameserver  = 0
$numberindex = []
$numbera = []
$numbercname = []
$numbermx = []
$numbernameserver = []
$row1 = $file[0]
$row2 = $file[1]
$row1 = $row1.split(" ") # Bosluk karakterini çıkartıp bunu baska bir diziye atadim
$row2 = $row2.split(" ")
a = $row1.length
while (i<=a )
	
         if $row1[i-1] == "A"  #ilk satirda nerede "Arecord" var ve onun altinda toplam ne kadar "Arecord" istendigini bulur 
		$numbera[i-1] = Integer($row2[i-1])
		$howmucha = $howmucha + $numbera[i-1]
         end
	
	 if $row1[i-1] == "Cname" #ilk satirda nerede "Cname" var ve onun altinda toplam ne kadar "Cname" istendigini bulur
		$numbercname[i-1] = Integer($row2[i-1])
                $howmuchcname = $howmuchcname + $numbercname[i-1]
         end

         if $row1[i-1] == "Mx" #ilk satirda nerede "Mx" var ve onun altinda toplam ne kadar "Mx" istendigini bulur
		$numbermx[i-1] = Integer($row2[i-1])
                $howmuchmx = $howmuchmx + $numbermx[i-1]
	 end

         if $row1[i-1] == "Nameserver" #ilk satirda nerede "Nameserver" var ve onun altinda toplam ne kadar "Nameserver" istendigini bulur
                $numbernameserver[i-1] = Integer($row2[i-1])
                $howmuchnameserver = $howmuchnameserver + $numbernameserver[i-1]

         end
         i = i+1
end
$func = Parts.new
$gdata = File.new("./gdata.txt", "w+")       
class BIND		
	
	def arecord
		j=1
		
        	while (j <= $howmucha) # Ne kadar arecord deger uretilmek isteniyorsa o kadar arecord degeri rasgele secer
			puts "#{($func.time()).to_s}  queries: info: client #{$func.ip_rand()}  #  #{$func.port()} :  \  \n query: #{$func.URL()} IN A #$ip"
                	j = j+1
        	end

	end

	def cname
		j=1
		while (j <= $howmuchcname) # Ne kadar cname deger uretilmek isteniyorsa o kadar cname degeri rasgele secer
			puts "#{ ($func.time()).to_s} queries: info: client #{$func.ip_rand()} #  #{$func.port()}  :  \  \n query: #{$func.URL()} mail IN CNAME #{$func.URL()}"
                    
                        j = j+1
                end
		
	end

	def mx
		url = $func.URL()
		j=1

                while (j <= $howmuchmx) # Ne kadar mx deger uretilmek isteniyorsa o kadar mx degeri rasgele secer
			puts"#{($func.time()).to_s}  queries: info: client #{$func.ip_rand()}  #  #{$func.port()}   :  \  \n   query:" + url + " IN MX #$randpv " + url
                        j = j+1
                end

	
	end
	
	def nameserver
		j=1
		while (j <= $howmuchnameserver) # Ne kadar nameserver deger uretilmek isteniyorsa o kadar nameserver degeri rasgele secer
			puts "#{($func.time()).to_s} queries: info: client #{$func.ip_rand()} #  #{$func.port()}   :  \  \n  query: IN NS #{$func.URL()}"

			j = j+1
               end
	end
	
	#$gdata.close		
end

bind = BIND.new

puts bind.arecord()
puts  bind.mx()
puts bind.cname()
puts bind.nameserver()

$gdata.close
	


		
