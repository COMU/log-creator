#!/usr/bin/env ruby

load "../functions.rb"
require 'optparse'

options = {}
pv=[10,20] #preferecnce-value
$randpv = pv[Random.rand(0..1)]
$file = IO.readlines("./djbdns.config") #reading from the file and assigning to another string
i = 1
$howmucha = 0
$howmuchnameserver = 0
$numbera = []
$numbernameserver = []
$row1 = $file[0]
$row2 = $file[1]
$row1 = $row1.split(" ") #i extracted the space character and assigned it to another string
$row2 = $row2.split(" ")
a = $row1.length
while (i<=a )
	
         if $row1[i-1] == "A"  # finds out where is "Arecord" in the first string and finds out how many "Arecords" are requested beneath 
		$numbera[i-1] = Integer($row2[i-1])
		$howmucha = $howmucha + $numbera[i-1]
         end

         if $row1[i-1] == "Nameserver" #finds out where is "Nameserver" in the first string and finds out how many "Nameservers" are requested beneath
                $numbernameserver[i-1] = Integer($row2[i-1])
                $howmuchnameserver = $howmuchnameserver + $numbernameserver[i-1]

         end
         i = i+1
end
$func = Parts.new
$log = File.new("./log.txt", "w+")
$url = $func.URL()

class DJBDNS		
	def arecord
		j=1
		
        	while (j <= $howmucha) # chooses the arecord values randomly which is requested to produce
			$output = "#{j} #{$url}: \n 199 bytes, 1+1+4+4 records, response, noerror \n query: #{j} #{$url} \n answer: #{$url} #{$func.port()} A #{$func.ip_rand()}"
			puts $output
			$log.puts($output)
                	j = j+1
        	end

	end
	def nameserver
		j=1
		while (j <= $howmuchnameserver) # chooses the nameserver values randomly which is requested to produce
			$output = "authority: #{$url} #{$func.port()} NS #{$func.URL()}"

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

  opts.on('-h', '--help') do |help| # This displays the help screen
    puts opts
  end

  opts.on('-p', '--process') do |process|
    
      puts 'type: djbdns log'
   
  end

  opts.on( '-v', '--verbose', 'Output more information' ) do #turn on verbose mode 
     options[:verbose] = true
     puts 'This is djbdns log'
   end	
    
end

optparse.parse!

djbdns = DJBDNS.new

puts djbdns.arecord()
puts djbdns.nameserver()

$log.close
	


		
