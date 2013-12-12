# encoding: utf-8
#!/usr/bin/env ruby

def time_rand from = 0.0, to = Time.now
        Time.at(from + rand * (to.to_f - from.to_f))
end


class Parts

#generated random time
  
  $rand = time_rand Time.local(2014), Time.local(2017)
 
  $rand_date = time_rand Time.now, $rand
  
  def time
	next_date = time_rand $rand_date, $rand
	$rand_date = next_date	
  end


# generated random time.format: '973492011' 
  def time_rand1
    Time.at(rand * Time.now.to_i).nsec
  end

#generated random time.format: '1972-09-01 03:22:52 +0300'
  def time_rand2
    Time.at(rand * Time.now.to_i)
  end

#generated random ip.format:'115.232.14.162'
  def ip_rand
    ip = "%d.%d.%d.%d" % [rand(256), rand(256), rand(256), rand(256)]
    return ip
  end

#generated random proccess id.format: '28065'
  def pid_rand
    pid = Random.rand(1000..65535)
    return pid
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

