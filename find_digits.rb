def findDigits(n)
  # Write your code here
  str = n.to_s
  array = str.split("").map { |digit| digit.to_i }
  array = array.reject { |n| n == 0}
  p array

  sum = 0
  array.each do |elem|
    if n % elem == 0
      sum += 1

    end
  end

  sum

end

p findDigits(124)
