def angryProfessor(k, a)
  # Write your code here
  count = 0
  a.each do |elem|
    if elem <= 0
      count += 1
    end
  end

  if count >= k
    return "NO"
  else
    return "YES"
  end

end

array1 = [-2,-1,0,1,2]
k = 3
p angryProfessor(k, array1)
