def formingMagicSquare(s)
  possibilities = [
    [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
    [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
    [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
    [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
    [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
    [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
    [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
    [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
    ]

  possible_cost = []

  possibilities.each do |square|
    p square
    cost = 0
    (0...3).each do |i|
      (0...3).each do |j|
        cost += (square[i][j] - s[i][j]).abs
      end
    end
    possible_cost.push(cost)
  end

  p possible_cost.min

end
array1 = [
  [4,4,7],
  [3,1,5],
  [1,7,9]
]
formingMagicSquare(array1)

