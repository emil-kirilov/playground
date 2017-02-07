3.times do
	print "Ho! "
end
puts "\n"

0.upto(9) do |x|
	print x, " "
end
puts "\n"

0.step(12, 3) {|x| print x, " " }
puts "\n"

File.open("ordinal").grep(/d$/) do |line|
	puts line
end