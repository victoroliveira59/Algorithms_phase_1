class QuickSort
	def partition(arr, low, high)
			pivot = arr[high]
			i = low - 1

			(low..high - 1).each do |j|
				if arr[j] <= pivot
					i += 1
					arr[i], arr[j] = arr[j], arr[i]
				end
			end

			arr[i + 1], arr[high] = arr[high], arr[i + 1]
			i + 1
	end

	def quicksort(arr, low, high)
		if low < high
			pi = partition(arr, low, high)
			quicksort(arr, low, pi - 1)
			quicksort(arr, pi + 1, high)
		end
	end
end

array = [-6,3,8,-4,5,20,6,4,-7,2]
n = array.length
instance = QuickSort.new
instance.quicksort(array, 0, n - 1)
print array
