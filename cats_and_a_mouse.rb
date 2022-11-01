def catAndMouse(x, y, z)
  c1 = (x - z).abs
  c2 = (y - z).abs

  if c1 < c2
    return "Cat A"
  elsif c1 > c2
    return "Cat B"
  else
    return "Mouse C"
  end

end


p catAndMouse(1,2,3)
