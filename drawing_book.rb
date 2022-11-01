def pageCount(n, p)
  # Write your code here


  flips1 = p / 2
  flips2 = ((n - p) /2)
  p flips1
  p flips2
  if (n == p)
    return 0
  elsif (p+1) == n && n.even?
    flips2 += 1
  end

    if flips1 < flips2
      return flips1
    elsif flips2 < flips1
      return flips2
    else
      return flips2
    end

end

# p pageCount(37455, 29835)
p pageCount(10, 9)
