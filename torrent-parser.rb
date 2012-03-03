require 'bencode'
t = BEncode.load(data)


File.open("the-muppets.torrent", "r") do |infile|
	while (line = infile.gets)
		puts "#{counter}: #{line}"
		counter = counter + 1
	end
end