def quicksort(arr)
	return [] if arr.empty?
	smaller_or_equal, bigger = arr.drop(1).partition { |el| el <= arr.first }
	quicksort(smaller_or_equal) + [arr.first] + quicksort(bigger)
end

p quicksort [1,2,3345,54,234,123,2,-23,4234,-324,2134]
