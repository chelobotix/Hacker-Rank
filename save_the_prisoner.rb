def saveThePrisoner(n, m, s)
  # Write your code here
  candy = 0
  if m > n
    m = m % n
  end

  if s + m - 1 <= n
    candy = (s + m) - 1
  else
    candy = (m + s)-(n + 1)
  end

  candy
end

p saveThePrisoner(31, 238250965, 2)


