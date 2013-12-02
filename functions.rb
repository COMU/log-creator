# encoding: utf-8
#!/usr/bin/env ruby

class Parts

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
end

