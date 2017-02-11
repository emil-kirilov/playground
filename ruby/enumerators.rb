require 'prime'
require 'benchmark'

inf_numbers = Enumerator.new do |yielder|
	number = 0;
	loop do
		number += 1
		yielder.yield number
	end	
end

5.times { print inf_numbers.next, " " }

threes_and_fives = Enumerator.new do |yielder|
	(1..100).each do |number|
		yielder.yield number if number % 15 == 0 
	end
end

loop { p threes_and_fives.next }

primes = 	Prime.each
mersenne = primes.lazy.select { |p| Math.log2(p+1) % 1 == 0.0}

Benchmark.bm(8) do |x|
	x.report("next:") do 
		7.times { p mersenne.next }
	end
end
#==
#p mersenne.first(7)
#==
#p mersenne.take(7).force
