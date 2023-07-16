def selection_sort (arr)

    arr.each_index do |i|
        max_index = arr[i..-1].each_with_index.max[1] + 1
        arr[i], arr[max_index] = arr[max_index], arr[i] if max_index != 1
    end
end


lista = [9,2,6,3,7,1,-3,-8]

ordenation = selection_sort(lista)
puts "Minha lista ficou ordenada da seguinte forma: #{ordenation.inspect}"
