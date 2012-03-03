require 'rubygems'
require 'bencode'
require 'digest/sha1'

# Hash to get
# 19f090af75ac25bcb3e1835624431a218874a3fd

torrent		= BEncode.load_file( "the-muppets.torrent" )
info_hash	= Digest::SHA1.hexdigest( torrent['info'].bencode )
puts info_hash