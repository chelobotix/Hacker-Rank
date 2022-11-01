def compareTriplets(a, b)
  sum_a = 0
  sum_b = 0
  if a.length == b.length
    (0..a.length - 1).each do |i|
      if a[i] > b[i]
        sum_a += 1
      elsif a[i] < b[i]
        sum_b += 1
      end
    end
  end
  array1 = []
  array1.push(sum_a)
  array1.push(sum_b)
  return array1
end

p compareTriplets([5, 6, 7], [3, 6, 10])
