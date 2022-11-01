def diagonalDifference(arr)
  # Write your code here
  sum1 = 0
  sum2 = 0
  (0...arr.length).each do |i|
    (0..(arr[i].length)).each { |j| sum1 += arr[i][j] if i == j }
  end
  ar = arr.reverse
  (0...ar.length).each do |i|
    (0..(ar[i].length)).each { |j| sum2 += ar[i][j] if i == j }
  end
  (sum1 - sum2).abs
end

matrix1 = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
p matrix1.reverse

p diagonalDifference(matrix1)
