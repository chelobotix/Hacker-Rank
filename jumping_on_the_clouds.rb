def jumpingOnClouds(c)
  # Write your code here
  sum = 0
  goal = false
  cloud = 0
  while !goal
    if c[cloud + 2] == 1
      sum += 1
      cloud += 1
    else
      sum += 1
      cloud += 2
    end

    if cloud >= (c.length - 1)
      goal = true
    end

  end
  sum

end

array = [0,1,0,0,0,1,0 ]
p jumpingOnClouds(array)

array = [0, 0, 0, 1, 0, 0]
p jumpingOnClouds(array)

