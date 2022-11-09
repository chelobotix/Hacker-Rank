def saveThePrisoner(n, m, s)
  # Write your code here
  sum = s + m - 1;
  if sum % n == 0
    return n
  end
  return sum % n;
end

p saveThePrisoner(31, 238250965, 2)


