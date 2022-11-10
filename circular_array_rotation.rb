def circularArrayRotation(a, k, queries)
  # Write your code here

  (1..k).each do |i|
    aux1 = a[-1]
    aux2 = a[0]
    final = a[-1]
    a.each_with_index do |elem, index|
      if index < a.length - 1
        if index.even?
          aux1 = a[index + 1]
          a[index + 1] = aux2
        else
          aux2 = a[index + 1]
          a[index + 1] = aux1
        end
      else
        a[0] = final
      end
    end
  end

  q = []
  queries.each_with_index do |elem, index|
    q.push(a[elem])
  end

  q

end

array = [3,4,5]
queries = [1,2]
p circularArrayRotation(array,2,queries)
