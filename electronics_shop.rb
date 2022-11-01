def getMoneySpent(keyboards, drives, b)
  #
  # Write your code here.
  #
  best = b - (keyboards[0] + drives[0])
  keyboards.each do |keyboard|

    drives.each do |drive|
        aux = b - (keyboard + drive)
        if aux.positive? && best.negative?
          best = aux
        end
        if aux < best && aux >= 0
          best = aux
        end

    end
  end
  if best < 0
    return -1
  else
    return b - best
  end
end

p getMoneySpent([3,1], [], 60)
