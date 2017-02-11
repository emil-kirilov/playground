def quicksort list
	return [] if list.empty?
	x, *xs = *list
	smallerOrEqual, bigger = xs.partition { |el| el <= x }
	quicksort(smallerOrEqual) + [x] + quicksort(bigger)
end

p quicksort [1,2,3345,54,234,123,2,-23,4234,-324,2134]