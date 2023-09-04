def name (arr)
	return nil if arr.empty?
	arr.sort
end



lista = %w[Carla Joao Ester Romario]

if lista.empty?
	puts "A lista esta vazia"
else
	result = name(lista)
	puts "Está é minha lista ordenada alfabética #{result}"
end

