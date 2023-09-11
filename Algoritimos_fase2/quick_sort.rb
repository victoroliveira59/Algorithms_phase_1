class QuickSort
	attr_accessor :array

	def initialize(array)
		@array = array
	end

	def partition(low, high)
		pivot = @array[high]
		i = low - 1

		@array.each_with_index do |item, j|
			if item <= pivot
				i += 1
				@array[i], @array[j] = @array[j], @array[i]
			end
		end

		@array[i + 1], @array[high] = @array[high], @array[i + 1]
		i + 1
	end

	def quicksort(low, high)
		if low < high
			pi = partition(low, high)
			quicksort(low, pi - 1)
			quicksort(pi + 1, high)
		end
	end
end

array = [10, 7, 8, 8, 1, 5]
quicksort = QuickSort.new(array)
quicksort.quicksort(0, array.length - 1)
puts array
