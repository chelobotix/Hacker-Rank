def plusMinus(arr)
  # Write your code here
  positive = 0.0
  negative = 0.0
  zero = 0.0

  arr.each do |elem|
    if elem.positive?
      positive += 1
    elsif elem.negative?
      negative += 1
    else
      zero += 1
    end
  end
  positive = positive / arr.length
  negative = negative / arr.length
  zero = zero / arr.length
  puts format("%<num>0.6f", num: positive)
  puts format("%<num>0.6f", num: negative)
  puts format("%<num>0.6f", num: zero)
end

arr = [-4, 3, -9, 0, 4, 1]
plusMinus(arr)
