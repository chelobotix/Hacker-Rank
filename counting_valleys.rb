def countingValleys(steps, path)
  # Write your code here
  array_path = path.split("")
  sea_level = 0
  is_in_valley = false
  is_in_montain = false
  counter = 0

  array_path.each do |step|
    if step == "D" && sea_level == 0
      counter += 1
      sea_level -= 1
    elsif step == "D" && sea_level != 0
      sea_level -= 1
    elsif step == "U"
      sea_level += 1
    end
  end
counter

end

str_1 = "DDUUUUDD"
str_2 = "DDUUDDUDUUUD"
str_3 = "UDDDUDUU"

p countingValleys(8, str_3)
