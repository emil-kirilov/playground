def merge left, right
	(left + right).sort
end

def merge_sort arr
	return arr if arr.length <= 1
	left, right = arr.take(arr.length/2), arr.drop(arr.length/2)
	merge (merge_sort left), (merge_sort right)
end

p merge_sort [1,2,5,3,2,66,23,4,7,-5,-2,1231,-14324,-3124,-3,0]