def appendAndDelete(s, t, k)
  # Write your code here
  #findig how many differences are
    counter = 0
    if k >= s.length + t.length
      return "Yes"
    elsif k <= (s.length - t.length).abs
      return "No"
    else
      t.each_char.with_index do |char, i|
        if t[i] != s[i] && s[i] != nil
          counter += 1
          #deleting
          (i...s.length).each do |j|
            s = s.chop
            k -= 1
          end
          #adding

          (i...t.length).each do |j|
            s.concat(t[j])
            k -= 1
          end

          if k == 0
            return "Yes"
          else
            return "No"
          end

        end

      end
    end

    if counter == 0
      k -= (s.length - t.length).abs
    end
    if k.even?
      return "Yes"
    else
      return "No"
    end


end

str1 = "ashley"
str2 = "ash"
# 2
p "1. No #{appendAndDelete(str1, str2, 2)}"

str1 = "y"
str2 = "yu"
# 2
p "2. No #{appendAndDelete(str1, str2, 2)}"

str1 = "aba"
str2 = "aba"
# 7
p "3. Yes #{appendAndDelete(str1, str2, 6)}"

str1 = "hackerhappy"
str2 = "hackerrank"
#9
p "4. Yes #{appendAndDelete(str1, str2, 9)}"

str1 = "aaaaaaaaaa"
str2 = "aaaaa"
#7
p "4. Yes #{appendAndDelete(str1, str2, 7)}"

str1 = "zzzzz"
str2 = "zzzzzzz"
#4
p "5. Yes #{appendAndDelete(str1, str2, 4)}"
