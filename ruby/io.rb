while line = gets
	puts line
end

# $> ruby io.rb ordinal 
# => first
# => second
# => third
# => forth
# => fifth
# => sixth
# => seventh
# => eighth
# => ninth
# => tenth

File.open("ordinal") do |file|
	file.each_line { |line| puts "Got: #{line.dump}" }
end
