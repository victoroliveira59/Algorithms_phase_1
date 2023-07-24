def search(arr, target)
	arr_init = 0
	arr_fim = arr.length - 1


	while arr_init <= arr_fim
		mid = (arr_init + arr_fim) / 2
		chute = arr[mid]

		if chute == target
			return mid
		elsif
			chute > target
			arr_fim = mid - 1
		else
			arr_init = mid + 1
		end
	end
	-1
end


array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
target = 4
result = search(array, target)
puts "Seu valor procurado está na posição #{result}"