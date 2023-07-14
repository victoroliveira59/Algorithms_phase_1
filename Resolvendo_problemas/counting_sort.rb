def counting_sort (arr)

    max_value = arr.length

    count = Array.new(max_value -1,0)

    arr_b = Array.new(0)


    arr.each do |element| 
        count[element - 1] += 1 
    end

    count.each.with_index do | element, i|
        count[i] = count[i] + count[i-1]              #Esta linha representa a soma do meu indice que já está armazenado mais o indice anterior representado por:c[i] = c[i] + c[i-1]
    end 
    (arr.length - 1).downto (0) do |i|
        arr_b[count[arr[i]-1]-1] = arr[i]
            count[arr[i]-1] -= 1  
    end
    return arr_b # Essa função retorna o valor do meu novo array(arr_b) para subscrever sobre o array principal
end

lista = [3,5,6,7,7,6,3,2,1,4]

result = counting_sort(lista)

puts "O resultado do coutintg sort é #{result}"
