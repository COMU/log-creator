def time_rand from = 0.0, to = Time.now
	Time.at(from + rand * (to.to_f - from.to_f))
end


class Function
	
	$rand_date = time_rand Time.now, Time.local(2014,7,1)	

#	def time_rand from = 0.0, to = Time.now
 # 		Time.at(from + rand * (to.to_f - from.to_f))
#	end

	
	def port
		port = (('1000'..'65536').to_a).sort_by {rand}[0,1].join
	end

	def time
		next_date = time_rand $rand_date, Time.local(2014,7,1)
        	$rand_date = next_date
	end

	def ip
		ip = ((('0'..'250').to_a).sort_by {rand}[0,1].join + "." + (('0'..'250').to_a).sort_by {rand}[0,1].join + "." + (('0'..'250').to_a).sort_by {rand}[0,1].join + "." + (('0'..'250').to_a).sort_by {rand}[0,1].join)

	end

	def URL
		tld = [".com",".net", ".biz", ".biz", ".org", ".info", ".us", "co.uk", ".de", ".co", ".io", ".me", ".pw", ".ca", ".tv", ".in", ".mobi", ".es", ".com.es", ".nom.es", ".org.es", ".com.au", ".net.au", ".org.au", ".eu", ".cc", ".org.uk", ".fr", ".pe", ".us.com", ".asia", ".ch", ".bz", "me.uk", "ws", ".xxx", ".sg", ".com.sg", ".li", ".de.com", ".cm", ".com.pe", ".net.pe", ".org.pe", ".nu", ".com.tr", ".gen.tr", ".web.tr", ".name.tr", ".tv.tr", "net.tr", ".gov.tr", ".bel.tr", ".edu.tr", ".org.tr", ".bbs.tr", ".av.tr", ".dr.tr", ".gs" ]

		url = ((('0'..'10').to_a).sort_by {rand}[0,1].join + "." + (0...8).map{ ('a'..'z').to_a[rand(29)] }.join  + (tld.to_a).sort_by {rand}[0,1].join)
	end
end

