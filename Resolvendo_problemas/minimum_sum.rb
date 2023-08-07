#noinspection RubyScope
def minimum_sum(arr)
	# Essa linha faz um clone do meu array original, para não altera-lo quando é deletado no fim do loop
	new_array = arr.clone

	while new_array.length > 1
		# Ordena a matriz para garantir que o menor elemento esteja no início
		new_array.sort!

		# Seleciona o menor elemento e seu adjacente
		min_element = new_array[0]
		adjacent_element = new_array[1]

		# Exclui o elemento adjacente da matriz
		new_array.delete_at(1)

		# Substitui o menor elemento na matriz pelo menor entre ele e seu adjacente
		new_array[0] = [min_element, adjacent_element].min
	end
	#Essa linha multiplica o menor elemento pela quantidade restante dos elementos do meu array
	min_element * (arr.length - 1)

end

# Exemplos de uso
arr1 = [3, 6, 2, 8, 7, 5]
result = minimum_sum(arr1)
puts result

