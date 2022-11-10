def circularArrayRotation(a, k, queries)
  # Write your code here

  a.rotate!(-k)
  q = []
  queries.each_with_index do |elem, index|
    q.push(a[elem])
  end

  q

end

array = [3,4,5]
queries = [1,2]
p circularArrayRotation(array,2,queries)
