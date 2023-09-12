class JumpSearch

	def jump (arr,x)

		n = arr.length
		prev = 0
		step = Math.sqrt(n).to_i #Está linha representa a raiz quadrada da quantidade de elemento que possui o array

		while arr[[step, n].min - 1] < x #
			prev = step
			step += Math.sqrt(n).to_i #O step dobra o seu valor

			return -1 if prev >= n
		end

		while arr[prev] < x #Neste loop começa a pesquisa linear, ou seja começa a percorrer um número de cada vez
			prev += 1
			return -1 if prev == [step, n].min
		end

		return prev if arr[prev] == x

		return -1
	end
end





