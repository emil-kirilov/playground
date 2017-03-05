twos = Fiber.new do
	num = 2
	loop do
		Fiber.yield(num) unless num % 3 == 0
		num += 2
	end
end

10.times { print twos.resume, " " }
puts ""
 
count = 0
threads = 10.times.map do |i|
	Thread.new do
		sleep(rand(0.1))
		Thread.current[:mycount] = count
		count += 1
	end
end

threads.each {|t| t.join; print t[:mycount], ", " }
puts "count = #{count}"

=begin
number = 0
inside = 200
outside = 10
Thread.new(number) do
	inside.times {
		print "Incrementing from within the thread\n"
		number += 1
	}
end 

outside.times {
	print "Incrementing from outside the thread\n"
	number += 1
}

threads.each {|t| t.join; print t, "\n" }

print "Number is #{number}, should have been #{inside + outside}.\n"
=end

number = 0
inside = 20
outside = 10
Thread.new(number) do
	inside.times {
		print "Incrementing from within the thread\n"
		number += 1
	}
end 

outside.times {
	print "Incrementing from outside the thread\n"
	number += 1
}

threads.each {|t| t.join; print t, "\n" }

print "Number is #{number}, should have been #{inside + outside}.\n"
