def birthday(s, d, m)
  # Write your code here
  squares = 0
  s.each_with_index do |elem1, i|
    sum = elem1
      if i <= (s.length)-m
        (1...m).each do |j|
          sum += s[i+j]
       end
      end
      if sum == d
          squares += 1
      end
  end

  if s.length == 1
    if s[0] == d
      squares += 1
    end
  end

     squares

end

array1 = [2,2,1,3,2]
array2 = [4]
array3 =[1,1,1,1,1,1]
array4 = [2, 5, 1, 3, 4, 4, 3, 5, 1, 1, 2, 1, 4, 1, 3, 3, 4, 2, 1]
p birthday(array4, 18, 7)
