def permutationEquation(pe)
  # Write your code here
  max = pe.max
  pe.unshift(nil)
  ye = []
  (1..max).each do |x|

    pe.each_with_index do |num , y|
      if x == num
        ye.push(pe.index(y))
        break
      end

    end
  end

  ye

end

array = [4,3,5,1,2]
p permutationEquation(array)

