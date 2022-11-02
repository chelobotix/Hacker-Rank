def pickingNumbers(a)
  # Write your code here
  max = []
  counter = 0
  a.each do |elem|
    counter = a.count(elem)
    counter += a.count(elem + 1)

    max.push(counter)
    counter = 0
  end
  max.max

end

array1 = [1,1,2,2,4,4,5,5,5]
array2 = [4, 6, 5, 3, 3, 1,7]
p pickingNumbers(array1)
p pickingNumbers(array2)

