def jumpingOnClouds(c, k)

  energy = 100
  if c.length == k
    energy -= 1
      if c[0] == 1
        energy -= 2
      end
  else
    i = k
    while (i != 0)
      p c[i]
      p (i + k) % (c.length)
      energy -= 1
      if c[i] == 1
        energy -= 2
      end

      if (i+k) >= c.length
        i = (i + k % (c.length)) - c.length
      else
        i += k
      end

      if i == 0
        energy -= 1
        if c[0] == 1
          energy -= 2
        end
      end

    end
  end


  energy

end

array = [1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1]
p jumpingOnClouds(array, 19)
