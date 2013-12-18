# encoding: utf-8
#!/usr/bin/env ruby

class Parts

#generated random time
  def time_rand from = 0.0, to = Time.now
	Time.at(from + rand * (to.to_f - from.to_f))
  end

  def time(start_time, end_time)
	next_time = time_rand start_time, end_time
  end

#generated random ip.format:'115.232.14.162'
  def ip_rand
	ip = ((('1'..'255').to_a).sort_by {rand}[0,1].join + "." + (('1'..'255').to_a).sort_by {rand}[0,1].join + "." + (('1'..'255').to_a).sort_by {rand}[0,1].join + "." + (('1'..'255').to_a).sort_by {rand}[0,1].join)
  end

#generated random e-mail.format: 'jyevbjseh@lkqpmckry.com'
  def mail_rand
    o =  [('a'..'z')].map{|r| r.to_a}.flatten
    string1 = (0..8).map{ o[rand(o.length)]  }.join
    string2 = (0..8).map{ o[rand(o.length)]  }.join
    mail = string1+"@"+string2+".com"
    return mail
  end

#generated random word.format: 'yszmokxzc'
  def word_rand
    o =  [('a'..'z')].map{|r| r.to_a}.flatten
    word = (0..8).map{ o[rand(o.length)]  }.join
    return word
  end

#generated random fraction number.format: '36/51' 
  def fraction_rand
    i = Random.rand(0..100)
    j = Random.rand(0..100)
    if i<j
      fraction= "%d" %i + "/" + "%d" %j
      return fraction
    else
      return fraction_rand
    end
  end

#generated random number. format: '7368'
  def number_rand
    k = Random.rand(0..9999)
    return k
  end

#generated random url
  def URL
	tld = [".com",".net", ".biz", ".biz", ".org", ".info", ".us", "co.uk", ".de", ".co", ".io", ".me", ".pw", ".ca", ".tv", ".in", ".mobi", ".es", ".com.es", ".nom.es", ".org.es", ".com.au", ".net.au", ".org.au", ".eu", ".cc", ".org.uk", ".fr", ".pe", ".us.com", ".asia", ".ch", ".bz", "me.uk", "ws", ".xxx", ".sg", ".com.sg", ".li", ".de.com", ".cm", ".com.pe", ".net.pe", ".org.pe", ".nu", ".com.tr", ".gen.tr", ".web.tr", ".name.tr", ".tv.tr", "net.tr", ".gov.tr", ".bel.tr", ".edu.tr", ".org.tr", ".bbs.tr", ".av.tr", ".dr.tr", ".gs" ]

	url = ((('0'..'10').to_a).sort_by {rand}[0,1].join + "." + (0...8).map{ ('a'..'z').to_a[rand(29)] }.join  + (tld.to_a).sort_by {rand}[0,1].join)

   end

#generated random port

   def port
	port = (('1000'..'65536').to_a).sort_by {rand}[0,1].join
   end


end
#generated random scanner
  
   def scanner
     array3=["Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B405","Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:25.0) Gecko/20100101 Firefox/25.0",
"Mozilla/5.0 (Windows NT 6.1; rv:14.0) Gecko/20100101 Firefox/14.0.1","Mozilla/5.0 (Windows NT 6.1; rv:22.0) Gecko/20100101 Firefox/22.0","Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko",
"Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 920)","Mozilla/5.0 (Windows NT 6.1; rv:22.0) Gecko/20100101 Firefox/22.0","Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.02","Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.2; Win64; x64; Trident/6.0; .NET4.0E; .NET4.0C; .NET CLR 3.5.30729; .NET CLR3.0.30729;", .NETCLR 2.0.5
"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36","Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.15 Safari/537.36","Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:25.0) Gecko/20100101 Firefox/25.0",
"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:25.0) Gecko/20100101 Firefox/25.0","Mozilla/5.0 (X11; U; Linux i686; fr-fr) AppleWebKit/525.1+ (KHTML, like Gecko, Safari/525.1+) midori/1.19","Mozilla/5.0 (X11; Linux; rv:2.0.1) Gecko/20100101 Firefox/4.0.1 Midori/0.4",
"Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14","Mozilla/5.0 (Windows NT 6.0; rv:2.0) Gecko/20100101 Firefox/4.0 Opera 12.14","Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5355d Safari/8536.25","Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.13+ (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2","Mozilla/5.0 (X11; U; Linux x86_64; en-us) AppleWebKit/531.2+ (KHTML, like Gecko) Version/5.0 Safari/531.2+"]
    puts array3[rand(0..19)]
  end
  
#generated random directory format: `GET /directory HTTP/1.1" `
    
  def dir_random
    o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
    string = (0...20).map{ o[rand(o.length)] }.join
    puts "\"GET/"+string+"HTTP/1.1\""
  end

