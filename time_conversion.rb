def timeConversion(s)
  # Write your code here
  hour =s.slice!(0..1)


  if s.include?("PM")
   if hour == "01"
      hour = "13"
    elsif hour == "02"
      hour = "14"
    elsif hour == "03"
      hour = "15"
    elsif hour == "04"
      hour = "16"
    elsif hour == "05"
      hour = "17"
    elsif hour == "06"
      hour = "18"
    elsif hour == "07"
      hour = "19"
    elsif hour == "08"
      hour = "20"
    elsif hour == "09"
      hour = "21"
    elsif hour == "10"
      hour = "22"
    elsif hour == "11"
      hour = "23"
    elsif hour == "12"
      hour = "12"
    end
  else
    if hour == "12"
      hour = "00"
    end
  end




  s.slice!(-2,2)
  hour + s


end

p timeConversion("12:05:45AM")
