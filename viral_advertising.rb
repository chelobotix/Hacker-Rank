def viralAdvertising(n)
  # Write your code here
shared = 5
liked = 2
cumulative = 2
  (2..n).each do |elem|
    shared = liked * 3
    liked = shared / 2
    cumulative += liked
  end

  cumulative
end

p viralAdvertising(5)
