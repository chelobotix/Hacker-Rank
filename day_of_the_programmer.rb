def dayOfProgrammer(year)
  # Write your code here
  is_leap_year = false
  days = 0
  if year <= 1917 && year % 4 == 0
    is_leap_year = true
  elsif year >= 1919 && year % 400 == 0
    is_leap_year = true
  elsif year >= 1919 && year % 4 == 0 && year % 100 != 0
    is_leap_year = true
  end

  days = 0
  y = ".09.#{year}"
  if is_leap_year
    day = 256 - 244
  elsif !is_leap_year
    day = 256 - 243
  end

  if year == 1918
      day = 26
  end



  "#{day}#{y}"

end

p dayOfProgrammer(1918)
