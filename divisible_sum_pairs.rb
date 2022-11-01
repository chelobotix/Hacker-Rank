def divisibleSumPairs(n, k, ar)
  # Write your code here
  sum = 0
  (0...n-1).each do |i|
    (1...n).each do |j|
      if i < j && (ar[i] + ar[j]) % k == 0
        sum += 1
      end
    end
  end
  sum
end


array1 = [1, 3, 2, 6, 1, 2]
p divisibleSumPairs(6, 3, array1)

