def nonDivisibleSubset(k, s)
  # Write iour code here

  if k < 2
    return 1
  end
  counter = Array.new(k,0)
  max_length = 0
  s.each_with_index do |number, i|
    r = s[i] % k
    counter[r] += 1

  end

  if counter[0] >= 1
    max_length += 1
  end

  (1...((k/2).ceil) + 1).each do |i|
    if i != k-i

      if counter[i] > counter[k-i]
        max_length += counter[i]
      elsif counter[i] < counter[k-i]
        max_length += counter[k-i]
      else
        max_length += counter[k-i]
      end
    else
      if counter[i] < 1
        max_length += counter[i]
      else
        max_length += 1
      end
    end
  end
  max_length
end


  # #removing all multiples of k except one
  # aux = s.select {|item| item % k != 0}
  # aux.push(s.find {|item| item % k == 0 })
  # s = aux.dup

  # #if k is even remove al items with remainder k/2 except one
  # # aux.clear
  # # if k.even?
  # #   aux = s.select {|item| item % k != (k/2)}
  # #   aux.push(s.find {|item| item % k == k/2 })
  # # end
  #  s = aux.dup




# arrai1 = [1,7,2,4]
# p nonDivisibleSubset(3, arrai1)



arrai2 = [19,10,12,10,24,25,22]
p nonDivisibleSubset(4, arrai2)

# arrai3 = [278, 576, 496, 727, 410, 124, 338, 149, 209, 702, 282, 718, 771, 575, 436]
# nonDivisibleSubset(7, arrai3)

# arrai4 = [2, 7, 12, 17, 22]
# p nonDivisibleSubset(5, arrai4)

# arrai5 = [1, 2, 3, 4, 5]
# p nonDivisibleSubset(1, arrai5)


