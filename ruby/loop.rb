a = 1
a *= 2 while a < 100
a
# => 128
a -= 10 until a < 100
a
# => 98

file = File.open("ordinal")
while line = file.gets
	puts(line) if line =~ /third/ .. line =~ /fifth/
end
# => third
# => forth
# => fifth

File.foreach("ordinal") do |line|
	if (($. == 1) || line =~ /eig/) .. (($. == 3) || line =~ /nin/)
		print line
	end
end

# => first
# => second
# => third
# => eighth
# => ninth