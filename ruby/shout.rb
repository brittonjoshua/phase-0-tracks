# module Shout 
 
# def self.yell_angrily(words)
# 	words + "!!!" + " :("
# end

# def self.yelling_happily(words)
# 	words.upcase + ":)))"
# end

module Shout 
	def yell_angrily(words)
		puts words.upcase + "!!!"
	end

	def yell_happily(words)
		puts words + ":)"
	end
end

class Old_Lady
	include Shout
end

class Teenager
	include Shout
end 

old_lady = Old_Lady.new
old_lady.yell_angrily("move")

teenager = Teenager.new
teenager.yell_happily("I love my new car.")