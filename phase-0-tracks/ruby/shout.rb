# module Shout
#   def self.yell_angrily(words)
#     puts words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	puts words + "!!!" + ":)"
#   end
# yelling_happily("rawr")
# yell_angrily("grr")
# end
module Shout
	def yells(words)
		word = words.downcase
		puts "I WANT #{word}"
		word = word.upcase
		puts "I REALLY WANT #{word}"
	end
end

class Child
	include Shout
end

class Adult
	include Shout
end

child = Child.new	
child.yells("icecream")
adult = Adult.new
adult.yells("peace and quiet")