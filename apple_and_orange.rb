def countApplesAndOranges(s, t, a, b, apples, oranges)
  # Write your code here
  sum_apples = 0
  sum_oranges = 0
  apples.each do |apple|
    landing_point = a + apple
    landing_point.between?(s,t) ? sum_apples += 1 : sum_apples = sum_apples
  end
  oranges.each do |orange|
    landing_point = b + orange
    landing_point.between?(s,t) ? sum_oranges += 1 : sum_oranges = sum_oranges
  end
  puts sum_apples
  puts sum_oranges
end

countApplesAndOranges(7,11,5,15,[-2, 2, 1],[5, -6])
