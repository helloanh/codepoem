# Title: Only Human
# By: Anh K. Hoang

class Human 
	def initialize(name)
		@name = name.uppercase
		@consciousness = Consciousness.new
		@greed = Random.rand(0..100)
		@love = Random.rand(0..100)

	def loveCapacity
		capacity = @love - @greed
		if capacity > 1 
			return true 
		else
			return false
		end 	
	end

	def accept(other)
		return 'bliss' if other.love == self.love
		return 'sadness' if (other.love < self.love) or (other.love > self.love)
	end

	def death
		if (@love < 0) and (@consciousness < 0)
			 return 'El Fin'
		else
			return @consciousnes--
	end

	def love(other)
		if accept(other) == 'bliss' 
			other.love = other.love + 1
			self.love = self.love + 1 
		end
	end	

end


class Consciousness 
	def initialize
		PositiveInfinity = +1.0/0.0 
		NegativeInfinity = -1.0/0.0 
		@consciousness = NegativeInfinity..PositiveInfinity
	end
end


i = Human.create('I')
her = Human.create('her')

if i.loveCapacity == true
	i.love(her)
else 
	i.death
end

