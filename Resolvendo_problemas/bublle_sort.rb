def selection_sort (arr)
    

    n = arr.length #Aqui, a variável n recebe o tamanho do array 

    (0..n - 2).each { |i| #início de um laço for, que percorrerá o array da esquerda para a direita,A variável i representa o índice atual do elemento sendo avaliado. A faixa 0..n-2 é usada para garantir que o laço não ultrapasse o penúltimo elemento do array.
        max_index = i
        (i + 1..n - 1).each { |j| #Este é outro laço for, aninhado dentro do laço externo. Ele percorre os elementos restantes à direita do elemento atual (i+1 até n-1), representados pela variável j. Esses elementos serão comparados com o elemento atual para encontrar o maior deles.
            # Laço interno
            if arr[j] > arr[max_index] #Dentro do laço interno, a cada iteração, comparamos o elemento atual (array[j]) com o maior elemento encontrado até agora (array[max_index])
                max_index = j # Se o elemento atual for maior, atualizamos o valor de max_index para o índice do novo maior elemento.
            end
        }

        if max_index != i
            arr[i], arr[max_index] = arr[max_index], arr[i]
        end
    }
    puts "O valor de indice do meu array é: #{arr.length}" #Imprime a quantidade de elementos que possui na minha lista 

    arr # Se o elemento atual for maior, atualizamos o valor de max_index para o índice do novo maior elemento.

end


lista = [9,2,6,3,7,1,-3,-8]

ordenation = selection_sort(lista)
puts "Minha lista ficou ordenada da seguinte forma: #{ordenation.inspect}"
