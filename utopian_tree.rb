def utopianTree(n)
  # Write your code here
  sum = 1
  (1..n).each do |i|
    if i.odd?
      sum *= 2
    else
      sum += 1
    end
  end

  return sum

end

p utopianTree(5)
