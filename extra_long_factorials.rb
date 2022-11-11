def extraLongFactorials(n)
  # Write your code here
  sum = 1
  (1..n).each do |i|
    sum *= i
  end

  sum
end


p extraLongFactorials(30)
