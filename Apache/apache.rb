load '../functions.rb'

class Apache_Log < Parts
    def error_code
    array=[100,101,200,202,203,204,205,206,300,301,302,303,304,305,307,400,401,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,500,501,502,503,505]
    print array[rand(0..36)]
    end

   def browser_type
    array=['Mozilla/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Mobile/7B405',
          'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:25.0) Gecko/20100101 Firefox/25.0',
          'Mozilla/5.0 (Windows NT 6.1; rv:14.0) Gecko/20100101 Firefox/14.0.1',
          'Mozilla/5.0 (Windows NT 6.1; rv:22.0) Gecko/20100101 Firefox/22.0',
          'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko',
          'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 920)',
          'Mozilla/5.0 (Windows NT 6.1; rv:22.0) Gecko/20100101 Firefox/22.0',
          'Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/20100101 Firefox/5.02',
          'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.2; Win64; x64; Trident/6.0; .NET4.0E; .NET4.0C; .NET CLR 3.5.30729; .NET CLR3.0.30729;',
          ' .NETCLR 2.0.5',
          'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.63 Safari/537.36',
          'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.15 Safari/537.36',
          'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:25.0) Gecko/20100101 Firefox/25.0',
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:25.0) Gecko/20100101 Firefox/25.0',
          'Mozilla/5.0 (X11; U; Linux i686; fr-fr) AppleWebKit/525.1+ (KHTML, like Gecko, Safari/525.1+) midori/1.19',
          'Mozilla/5.0 (X11; Linux; rv:2.0.1) Gecko/20100101 Firefox/4.0.1 Midori/0.4',
          'Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14',
          'Mozilla/5.0 (Windows NT 6.0; rv:2.0) Gecko/20100101 Firefox/4.0 Opera 12.14',
          'Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5355d Safari/8536.25',
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/537.13+ (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2',
          'Mozilla/5.0 (X11; U; Linux x86_64; en-us) AppleWebKit/531.2+ (KHTML, like Gecko) Version/5.0 Safari/531.2+']
    return array[rand(0..19)]
  end
end

#row count
line_count=IO.readlines('apache.conf')
count=line_count[0].chop!.to_i

#current date
$now=Time.now

i=0
obj=Apache_Log.new
while i<count
  print "#{obj.ip_rand()} - - "
  print "[#{obj.timeCreator()}] "
  print "\"#{obj.requestCreator()} /#{obj.word_rand()} HTTP1.1 \" "
  print "#{obj.error_code} "
  print "#{obj.number_rand()} "
  print "\"#{obj.domainCreator()}#{obj.word_rand()}\" "
  print "\"#{obj.browser_type()}\"\n"
  i=i+1
end
