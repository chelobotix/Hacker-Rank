def staircase(n)
  # Write your code here

  control = 1
  str1 = ""

  while control <= n
    spaces = n - control
    spaces.times { str1 += " " }
    control.times { str1 += "#" }
    puts str1
    control += 1
    str1 = ""
  end
end

staircase(20)
