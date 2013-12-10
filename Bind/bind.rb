#!/usr/bin/env ruby

load "../functions.rb"
require 'optparse'

options = {}
pv=[10,20] #preferecnce-value
$randpv = pv[Random.rand(0..1)]
$file = IO.readlines("./file.txt") #reading from the file and assigning to another string
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
$row1 = $row1.split(" ") #i extracted the space character and assigned it to another string
$row2 = $row2.split(" ")
a = $row1.length
while (i<=a )
	
         if $row1[i-1] == "A"  #finds out where is "Arecord" in the first string and finds out how many "Arecords" are requested beneath 
		$numbera[i-1] = Integer($row2[i-1])
		$howmucha = $howmucha + $numbera[i-1]
         end
	
	 if $row1[i-1] == "Cname" #finds out where is "Cname" in the first string and finds out how many "Cnames" are requested beneath
		$numbercname[i-1] = Integer($row2[i-1])
                $howmuchcname = $howmuchcname + $numbercname[i-1]
         end

         if $row1[i-1] == "Mx" #finds out where is "Mx" in the first string and finds out how many "Mxes" are requested beneath
		$numbermx[i-1] = Integer($row2[i-1])
                $howmuchmx = $howmuchmx + $numbermx[i-1]
	 end

         if $row1[i-1] == "Nameserver" #finds out where is "Nameserver" in the first string and finds out how many "Nameservers" are requested beneath
                $numbernameserver[i-1] = Integer($row2[i-1])
                $howmuchnameserver = $howmuchnameserver + $numbernameserver[i-1]

         end
         i = i+1
end
$func = Parts.new
$log = File.new("./log.txt", "w+")       
class BIND		
	
	def arecord
		j=1
		
        	while (j <= $howmucha) # chooses the arecord values randomly which is requested to produce
			$output = "#{($func.time()).to_s.sub(" +",".")}  queries: info: client #{$func.ip_rand()}  #  #{$func.port()} :  \  \n query: #{$func.URL()} IN A #$ip"
			puts $output
			$log.puts($output)
                	j = j+1
        	end

	end

	def cname
		j=1
		while (j <= $howmuchcname) # chooses the cname values randomly which is requested to produce
			$output = "#{ ($func.time()).to_s.sub(" +",".")} queries: info: client #{$func.ip_rand()} #  #{$func.port()}  :  \  \n query: #{$func.URL()} mail IN CNAME #{$func.URL()}"
			puts $output
			$log.puts($output)
                    
                        j = j+1
                end
		
	end

	def mx
		url = $func.URL()
		j=1

                while (j <= $howmuchmx) # chooses the mx values randomly which is requested to produce
			$output = "#{($func.time()).to_s.sub(" +",".")}  queries: info: client #{$func.ip_rand()}  #  #{$func.port()}   :  \  \n   query:" + url + " IN MX #$randpv " + url
			puts $output
			$log.puts($output)
                        j = j+1
                end

	
	end
	
	def nameserver
		j=1
		while (j <= $howmuchnameserver) # chooses the nameserver values randomly which is requested to produce
			$output = "#{($func.time()).to_s.sub(" +",".")} queries: info: client #{$func.ip_rand()} #  #{$func.port()}   :  \  \n  query: IN NS #{$func.URL()}"
			puts $output
			$log.puts($output)

			j = j+1
               end
	end
		
end

options[:logfile] = nil
options[:verbose] = false
optparse = OptionParser.new do |opts|
  
  opts.banner = "Usage: file.rb [options]"

  #opts.on( '-l', '--logfile FILE', 'Write log to FILE' ) do|file|
  #  options[:logfile] = file
  #end 

  opts.on('-h', '--help') do |help| # This displays the help screen
    puts opts
  end

  opts.on('-p', '--process') do |process|
    
      puts 'type: bind log'
   
  end

  opts.on( '-v', '--verbose', 'Output more information' ) do #turn on verbose mode 
     options[:verbose] = true
     puts 'This is bind log'
   end	
    
end

optparse.parse!

bind = BIND.new

puts bind.arecord()
puts  bind.mx()
puts bind.cname()
puts bind.nameserver()

$log.close
	


		
