def nonDivisibleSubset(k, s)
  # Write your code here
  found = true
  count = s.length
  control = true
    while control
    combination1 =  s.combination(count).to_a

    combination1.each do |array|
      two_elem_array = array.combination(2).to_a
      found = true
      two_elem_array.each do |two_elem|
        if two_elem.sum % k == 0
          found = false
          break
        end
      end
      if found
        return count
      end
    end
    count -= 1
    if count < 2
      control = false
      return 1
    end
  end

end


array1 = [1,7,2,4]
p nonDivisibleSubset(3, array1)

array2 = [19,10,12,10,24,25,22]
p nonDivisibleSubset(4, array2)

array3 = [278, 576, 496, 727, 410, 124, 338, 149, 209, 702, 282, 718, 771, 575, 436]
p nonDivisibleSubset(7, array3)

array4 = [2, 7, 12, 17, 22]
p nonDivisibleSubset(5, array4)

array5 = [1, 2, 3, 4, 5]
p nonDivisibleSubset(1, array5)


