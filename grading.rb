def gradingStudents(grades)
  # Write your code here
  new_grades = []
  grades.each do |grade|
    if grade >= 38
      digit = grade % 5

      unless digit == 0
        next_multiple =  (grade - digit) + 5
        puts "gra: #{grade} mul: #{next_multiple}"
        if (next_multiple - grade) < 3
          new_grades.push(next_multiple)
        else
          new_grades.push(grade)
        end
      else
        new_grades.push(grade)
      end
    else
      new_grades.push(grade)
    end
  end
  new_grades

end

grades = [36,60,61,62,63,64,65,66,67,68,69,70]
p gradingStudents(grades)

