require 'vcr'

vcr = VCR.new
vcr.gsub! /Ruby/, "Crazy"
vcr.upcase!
object = "I Go Ruby"
vcr.play_back_to(object)
puts object
