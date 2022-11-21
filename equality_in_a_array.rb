def equalizeArray(arr)
  # Write your code here
  max =  arr.map.with_index {|elem| arr.count(elem)}.max
  counter = arr.length - max

end

arr = [3,3,2,1,3]
p equalizeArray(arr)
