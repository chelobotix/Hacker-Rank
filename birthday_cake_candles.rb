def birthdayCakeCandles(candles)
  # Write your code here
  max = 0
  candles.each do |candle|
    if candle > max
      max = candle
    end
  end
  sum = 0
  candles.each do |candle|
    if candle == max
      sum += 1
    end
  end
 sum

end

p birthdayCakeCandles([3, 2, 1, 3])
