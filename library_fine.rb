def libraryFine(d1, m1, y1, d2, m2, y2)
  # Write your code here
  fine = 0
  due_data = [d2,m2,y2]
  return_data = [d1,m1,y1]

  if return_data[0] <= due_data[0] && due_data[1] == return_data[1] && due_data[2] == return_data[2]
    return 0

  elsif return_data[0] > due_data[0] && due_data[1] == return_data[1] && due_data[2] == return_data[2]
    return (return_data[0] - due_data[0]) * 15

  elsif  due_data[1] < return_data[1] && due_data[2] == return_data[2]
    return (return_data[1] - due_data[1]) * 500

  elsif  due_data[2] < return_data[2]
    return 10000
  else
    return 0
  end


end

d1,m1,y1 = 6, 6, 2015
d2,m2,y2 = 9, 6, 2016
p libraryFine(d1, m1, y1, d2, m2, y2)
