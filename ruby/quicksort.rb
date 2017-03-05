def quicksort list
	return [] if list.empty?
	smallerOrEqual, bigger = list.drop(1).partition { |el| el <= list.first }
	quicksort(smallerOrEqual) + [list.first] + quicksort(bigger)
end

p quicksort [1,2,3345,54,234,123,2,-23,4234,-324,2134]