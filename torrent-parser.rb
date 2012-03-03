require 'rubygems'
require 'bencode'
require 'digest/sha1'

ARGV.each do|file|
	torrent		= BEncode.load_file( file )
	info_hash	= Digest::SHA1.hexdigest( torrent['info'].bencode )
	puts "File: #{file}"
	puts "Hash: #{info_hash}"
	puts "---"
end