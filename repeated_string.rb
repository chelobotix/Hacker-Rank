def repeatedString(s, n)
  # Write your code here
  a = s.count("a")
  rest = 0
  n % s.length != 0 if rest = s[0...(n % s.length)].count("a")
  (a * (n / s.length)) + rest

end

p repeatedString("abcac", 10)
p repeatedString("aba", 10)
p repeatedString("a", 1000000000000)

