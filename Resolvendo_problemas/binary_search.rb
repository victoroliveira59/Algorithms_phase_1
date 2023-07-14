def binary_search (arr,target)
    arr.bsearch { |x| x >= target} #Essa função faz a pesquisa binária 
end


arr = (10..100).to_a
print "Insira um valor para saber se está na lista: "
target = 55
result = binary_search(arr,target)

if result 
    puts "valor encontrado: #{result}"
else 
    puts "Valor não encontrado!"
end