arr = [9,-8,8,3]

a = arr.sort
k = 3

a.each_with_index do |value, i|
	if k > 0
		if value < 0
			a[i] *= - 1
			k -= 1
		elsif value == 0
			k = 0
			break
		elsif value > 0
			a[i] *= - 1
			break
		else
			break
		end
	end
end
puts a.sum
