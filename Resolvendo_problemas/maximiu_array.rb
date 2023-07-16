arr = [ 9,8,8,5 ]

a = arr.sort
k = 4

a.each_with_index do |value, i|
  if k > 0
    if value < 0
      a[i] *= - 1
      k -= 1
    elsif value == 0
      k = 0
      break
    elsif value > 0
      a[i] *= - 1
      break
    end
  else 
    break
  end
end
puts a.sum
