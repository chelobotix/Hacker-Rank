def kangaroo(x1, v1, x2, v2)
  # Write your code here
  position_one = x1 + v1
  position_two = x2 + v2

  x1 < x2 ? min_start_point = 1 : min_start_point = 2

  result = ""

  if position_one == position_two
    result = "YES"
  else
    control = 0
    while position_one != position_two

      position_one += v1
      position_two += v2

      if min_start_point == 1 && position_one > position_two
        result = "NO"
        return result
      elsif min_start_point == 2 && position_two > position_one
        result = "NO"
        return result
      end

      if position_one == position_two
        result = "YES"
        break
      end
      if control >= 10000
        puts "im :("
        result = "NO"
        break
      end

      control += 1
    end

  end


  result
end

p kangaroo(0,7,5,3)
