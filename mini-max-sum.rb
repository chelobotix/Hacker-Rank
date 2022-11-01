def miniMaxSum(arr)
  min = 10 ** 9
  max = 0
  # Write your code here
  arr.each do |elem|
    if elem < min
      min = elem
    end
    if elem > max
      max = elem
    end
  end
  sum_min = 0
  sum_max = 0
  if max == min
    sum_min = max * 4
    sum_max = max * 4
  else
    arr.each do |elem|
      unless elem == min
        sum_min += elem
      end
      unless elem == max
        sum_max += elem
      end

    end
  end
  print  "#{sum_max} #{sum_min}"
end

miniMaxSum([5,5,5,5,5])
