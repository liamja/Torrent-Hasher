require 'rubygems'
require 'bencode'
require 'digest/sha1'
require 'optparse'

ARGV.each do|file|
	puts "File: #{file}"
	torrent		= BEncode.load_file( file )
	info_hash	= Digest::SHA1.hexdigest( torrent['info'].bencode )
	puts "Hash: #{info_hash}"
	puts "---"
end