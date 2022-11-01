def formingMagicSquare(s)
  # Write your code here
  costs = []
  aux = 0
  if s[1][1] != 5
    cost = (s[1][1] - 5).abs
    s[1][1] = 5
    aux = cost
  end

  if s[0].sum == 15 && s[1].sum == 15 && s[2].sum == 15
    return 40
  end

  type1 = [8,1,6,7,2,9,4,3]
  #rotating type 1
  array_type = [type1]
  (1..7).each do |i|
    array_type.push(type1.rotate(i))
  end
  #rotating type 2
  type2 = [8,3,4,9,2,7,6,1]
  array_type.push(type2)
  (1..7).each do |i|
    array_type.push(type2.rotate(i))
  end

  array = []
  array.push(s[0][0])
  array.push(s[0][1])
  array.push(s[0][2])
  array.push(s[1][2])
  array.push(s[2][2])
  array.push(s[2][1])
  array.push(s[2][0])
  array.push(s[1][0])


  array_type.each_with_index do |elem , i|
    elem.each_with_index do |elem2, j|
      cost += (elem2 - array[j]).abs
    end
    costs.push(cost)
    cost = aux
  end
  costs.min
end

array1 = [
  [4,4,7],
  [3,1,5],
  [1,7,9]
]

array2 = [
  [4,9,2],
  [3,5,7],
  [8,1,5]
]

array3 = [
  [7,6,5],
  [7,2,8],
  [5,3,4]
]

array4 = [
  [5,5,5],
  [5,5,5],
  [5,5,5]
]
p formingMagicSquare(array1)




