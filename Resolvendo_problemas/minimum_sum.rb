def minimum_sum (a)

b = Array.new(0)

  while a.length > 1 # Esse lo percorre o array enaquando a quantidade de elementos nele for > 1
    min_index = 0
    (1...a.length).each do |i| #Esse loop each percorre os elemento de e armazena a cada iteração em i
      if a[i] < a[min_index]   #Essa linha representa uma condição de que se o elemento na variavel i for menor que min_index 
        min_index = i          #Ele armazena o valor de i em min_index
      end
    end
    b << min_index             # min_index incrementa o array b com o menor valor

    if min_index == a.length - 1 # Aqui verifiva se o ultimo elemento é o menor array de 'a', se for verdade significa que o menor valor está no final do array 'a' e excluit esse elemento
      a = a[0...min_index]       #essa linha representa que excluimos o elemento de menor valor e fazemos uma cópia dos elementos acima a ele. A cópia começa do inicio do min_index até o elemento, siginifica que está armazenando apenas o valor acima do menor 
    else
      a = a[0...min_index] + a[(min_index+1)..- 1] #se caso contrário signiica que o menor está localizado em algum lugar do array 'a'. No entanto ele é encontrado no meio do array e excluido 
    end                                            # e fazendo a concatenação das duas partes antes e depois do elemento
  end

  return b.sum # Aqui retornamos a soma de todos os elementos no array b, que representam a soma mínima.
end


a = [4, 7, 2, 9, 5, 2, 6]

result = minimum_sum(a)
puts "O resultado da soma dos menores elementos são #{result}"