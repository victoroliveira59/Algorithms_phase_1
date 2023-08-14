class Bublle_sort
	attr_accessor :arr
	def initialize
		@arr = arr
	end

	def bubbe_sort(arr)
		arr.each_index do |i|
<<<<<<< HEAD
			max_index = arr[i..-1].each_with_index.min_by { |num, _| num }[1] + i
			arr[i], arr[max_index] = arr[max_index], arr[i]
			swapped = true
=======
			max_index = arr[i..-1].each_with_index.max_by { |num, _| num }[1] + i
			arr[i], arr[max_index] = arr[max_index], arr[i] if max_index != i
>>>>>>> origin/main
		end
		arr
	end
end

<<<<<<< HEAD
lista = [9,2,6,3,7,1,-3,-8]
result = Bublle_sort.new
print result.bubbe_sort(lista)

=======


lista = [9,2,6,3,7,1,-3,-8]
result = Bublle_sort.new
print result.bubbe_sort(lista)
>>>>>>> origin/main
# puts "Minha lista ficou ordenada da seguinte forma: #{result.inspect}"
