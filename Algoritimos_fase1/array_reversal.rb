

def rothate(arr ,d, n)

	if d >= n
		nil
		puts "O numero de tentativas de rotação e maior que a quantidade elementos do array"
	else
		reversal(arr, 0, n - 1)
		reversal(arr, 0, d - 1)
		reversal(arr, d, n - 1)
		arr
	end
end

def reversal(arr, start, fim)
	while start < fim
		arr[start],arr[fim] = arr[fim], arr[start]
		start += 1
		fim -= 1
	end
end


