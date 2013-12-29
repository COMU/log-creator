#!/usr/bin/env ruby
require 'optparse'


text_file=File.open('apache.rb')
file = text_file.readlines()
text_file.close

options = {:file => nil}
optparse = OptionParser.new do |opts|
  opts.banner = "Usage: file.rb [options]"

  opts.on('-f', '--file') do |file|
    options[:file] = file
  end

  opts.on('-h', '--help') do |help|
    puts opts
  end

end

optparse.parse!

if options[:file]
  exec("ruby apache.rb > log.txt")
end


