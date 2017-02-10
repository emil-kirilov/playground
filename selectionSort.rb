def partition list
	min_index = 0	
	list.each_index { |i| min_index = i if list[min_index] > list[i] }
	list[0], list[min_index] = list[min_index], list[0]
	list 
end

def selection_sort list
	return list if list.length <= 1
	min, *rest = partition list
	[min] + selection_sort(rest)
end

p selection_sort [32,435,64,765,3,-234,32,432,-2,1,-213,-134,-23,45432]