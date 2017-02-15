def insert(el, list)
	added = false	
	list.each_index do |i|
		if list[i] > el 
			list.insert(i, el)
			elIsBiggest = true
			break 
		end
	end
	list << el unless added
end

def insertion_sort(list)
	res = [] 
	insert(list.pop, res) while !list.empty?
	res
end

p insertion_sort [123,543,546,0,6778,213,-4312,3124,-234,2,53,23,-5,3]
p insertion_sort []