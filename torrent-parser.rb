require 'rubygems'
require 'bencode'
require 'digest/sha1'

torrent = BEncode.load_file("the-muppets.torrent")
puts torrent["announce"]