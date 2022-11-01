def sockMerchant(n, ar)
  # Write your code here
  pairs = 0
  map_1 = {}
  ar.each { |elem| map_1[elem.to_s.to_sym] = ar.count(elem) }
  map_1.each do |key, value|
     if value > 1
      if value.even?
        pairs += value / 2
      else
        pairs += (value - 1) / 2
      end
     end

  end
     p map_1
  pairs

end

array_1 = [10, 20, 20, 10, 10, 30, 50, 10, 20]
array_2 = [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]
p sockMerchant(9, array_1)
