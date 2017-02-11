def merge left, right
	result = []
	while !left.empty? && !right.empty?
		if left[0] < right[0]
			result << left.shift
		else
			result << right.shift
		end
	end

	if left.empty?
		result += right
	else
		result += left
	end
end

def merge_sort arr
	return arr if arr.length <= 1
	left, right = arr.take(arr.length/2), arr.drop(arr.length/2)
	merge (merge_sort left), (merge_sort right)
end

p merge_sort [1,2,5,3,2,66,23,4,7,-5,-2,1231,-14324,-3124,-3,0]