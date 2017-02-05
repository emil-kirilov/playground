class MyEnumerable
	def initialize(data)
		@data = data
	end
	
	def my_each(*args)
		length = @data.length
		i = 0
		while i < length
			yield(@data[i], *args)
			i += 1	
		end
	end
end

#MyEnumerable.new([1,2,3,4,5,6]).my_each("idea") { |data, *args| puts "#{data} #{args[0]}"}

def greet_twice (name)
	yield name
	yield name
end


greet_twice("Emo") { |name| puts "Hello, #{name}" }

class Array
	def my_find
		each do |element|
			return element if yield element 
		end
	end

	def my_map
		result = []
		each do |element|
			result << yield(element)
		end
		result
	end

	def my_inject(accum_or_method, &block)
		if block_given?
			each do |element|
				accum_or_method = block.call accum_or_method, element
			end
			accum_or_method
		else
			first, *rest = *self
			rest.each do |element|
				first = first.send(accum_or_method, element)
			end
			first
		end
	end
end

p [1,2,3,4,5,-1,0,3].my_find { |element| element < 0 }
p [1,2,3,4,5,-1,0,3].my_map { |element| element * (-1)}
p [1,3,5,7].my_inject(0) {|sum, element| sum + element}
p [1,3,5,7].my_inject(1) {|product, element| product * element}
p [1,3,5,7].my_inject(:+)
p [1,3,5,7].my_inject(:*)
p [1].my_inject(:*)

short_enum = [1,2,3].to_enum
long_enum = ('a'..'z').to_enum

loop do
	puts "#{short_enum.next} and #{long_enum.next}"
end

