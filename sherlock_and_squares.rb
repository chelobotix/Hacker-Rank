def squares(a, b)
  # Write your code here

  a2 = (a**0.5).to_i
  b2 = (b**0.5).to_i

  if a2 == a**0.5
    return b2-a2 + 1
  else
    return b2-a2
  end

end

#case 1
p squares(24,49)


