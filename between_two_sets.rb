def getTotalX(a, b)
  # Write your code here
  total_lenght = a.length + b.length
  array1 = []
  control = 0
  ranges1 = (a[-1]..b[0]).to_a

  ranges1.each do |range1|
    a.each do |elem_a|
      if range1 % elem_a == 0
        control += 1
      end
    end
    b.each do |elem_b|
      if elem_b % range1 == 0
        control += 1
      end
    end

    if total_lenght == control
      array1.push(range1)
    end
    control = 0


  end

  array1.length



end

getTotalX([2,4], [16,32,96])
