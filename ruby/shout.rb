#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" ":("
#	end
#
#	def self.yelling_happily(words)
#		words + "...booyeah!" ":)"
#	end
#end

#p Shout.yell_angrily("You broke my glasses")
#p Shout.yelling_happily("I'm a winner")

module Shout
	def help_shout(words)
		words.upcase + "...CAN YOU HEAR ME?"
	end
end

class Chimpanzee
	include Shout
end

class Old_Ladies
	include Shout
end

chimp = Chimpanzee.new
p chimp.help_shout("can i get a banana")

old_lady1 = Old_Ladies.new
p old_lady1.help_shout("my soup is cold!")