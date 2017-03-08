animal = "dog"

def animal.speak
	puts "The #{self} says WOOF!"
end

singleton = class << animal
	def lie
		puts "The #{self} lies down"
	end
	self # << return singleton class object
end

animal.speak
animal.lie

puts "Singleton class object is #{singleton}"
puts "It defines methods #{singleton.instance_methods - 'string'.methods}"