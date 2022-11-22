def queensAttack(n, k, r_q, c_q, obstacles)
  # Write your code here
  # construct the board
  board = Array.new(n){Array.new(n,0)}
  # adjust queen position to an array format
  r_q = r_q - 1
  c_q = c_q - 1
  # put queen position on the board
  board[r_q][c_q] = 1
  #put obstacles in the board
  obstacles.each do |obstacle|
    board[obstacle[0]-1][obstacle[1]-1] = 3
  end

  sum = 0
  row1 = true
  row2 = true
  col1 = true
  col2 = true
  diag1 = true
  diag2 = true
  diag3 = true
  diag4 = true
  r1 = c_q -1
  r2 = c_q +1
  c1 = r_q -1
  c2 = r_q +1
  d1 = [r_q - 1, c_q - 1]
  d2 = [r_q + 1, c_q + 1]
  d3 = [r_q - 1, c_q + 1]
  d4 = [r_q + 1, c_q - 1]

  while row1 || row2 || col1 || col2 || diag1 || diag2 || diag3 || diag4
    # row 1
    if row1 && r1 >= 0 && board[r_q][r1] == 0
      board[r_q][r1] = 5
      sum += 1
      r1 -= 1
    else
      row1 = false
    end
    # row 2
    if row2 && r2 <= n-1 && board[r_q][r2] == 0
      board[r_q][r2] = 5
      sum += 1
      r2 += 1
    else
      row2 = false
    end

    # column 1
    if col1 && c1 >= 0 && board[c1][c_q] == 0
      board[c1][c_q] = 5
      sum += 1
      c1 -= 1
    else
      col1 = false
    end

    # column 2
    if col2 && c2 <= n - 1 && board[c2][c_q] == 0
      board[c2][c_q] = 5
      sum += 1
      c2 += 1
    else
      col2 = false
    end

    # diagonal 1
    if diag1 && d1[0] >= 0 && d1[1] >= 0 && board[d1[0]][d1[1]] == 0
      board[d1[0]][d1[1]] = 5
      sum += 1
      d1[0] -= 1
      d1[1] -= 1
    else
      diag1 = false
    end

    # diagonal 2
    if diag2 && d2[0] <= n - 1 && d1[1] <= n - 1 && board[d2[0]][d2[1]] == 0
      board[d2[0]][d2[1]] = 5
      sum += 1
      d2[0] += 1
      d2[1] += 1
    else
      diag2 = false
    end

    # diagonal 3
    if diag3 && d3[0] >= 0 && d1[1] <= n - 1 && board[d3[0]][d3[1]] == 0
      board[d3[0]][d3[1]] = 5
      sum += 1
      d3[0] -= 1
      d3[1] += 1
    else
      diag3 = false
    end

    # diagonal 4
    if diag4 && d4[0] <= n - 1 && d4[1] >= 0 && board[d4[0]][d4[1]] == 0
      board[d4[0]][d4[1]] = 5
      sum += 1
      d4[0] += 1
      d4[1] -= 1
    else
      diag4 = false
    end
  end

  sum

end

n = 8
k = 0
r_q = 4
c_q = 4
obstacles = [[3,5]]
p queensAttack(n, obstacles, r_q, c_q, obstacles )

n = 4
k = 0
r_q = 4
c_q = 4
obstacles = []
p queensAttack(n, obstacles, r_q, c_q, obstacles )

n = 5
k = 0
r_q = 4
c_q = 3
obstacles = [[5,5],[4,2],[2,3]]
p queensAttack(n, obstacles, r_q, c_q, obstacles )


# n = 100000
# k = 0
# r_q = 4187
# c_q = 5068
# obstacles = []
# p queensAttack(n, obstacles, r_q, c_q, obstacles )


obstacles = [
	[54, 87],
	[64, 97],
	[42, 75],
	[32, 65],
	[42, 87],
	[32, 97],
	[54, 75],
	[64, 65],
	[48, 87],
	[48, 75],
	[54, 81],
	[42, 81],
	[45, 17],
	[14, 24],
	[35, 15],
	[95, 64],
	[63, 87],
	[25, 72],
	[71, 38],
	[96, 97],
	[16, 30],
	[60, 34],
	[31, 67],
	[26, 82],
	[20, 93],
	[81, 38],
	[51, 94],
	[75, 41],
	[79, 84],
	[79,65],
	[76,80],
	[52,87],
	[81,54],
	[89,52],
	[20,31],
	[10,41],
	[32,73],
	[83,98],
	[87,61],
	[82,52],
	[80,64],
	[82,46],
	[49,21],
	[73,86],
	[37,70],
	[43,12],
	[94,28],
	[10,93],
	[52,25],
	[50,61],
	[52,68],
	[52,23],
	[60,91],
	[79,17],
	[93,82],
	[12,18],
	[75,64],
	[69,69],
	[94,74],
	[61,61],
	[46,57],
	[67,45],
	[96,64],
	[83,89],
	[58,87],
	[76,53],
	[79,21],
	[94,70],
	[16,10],
	[50,82],
	[92,20],
	[40,51],
	[49,28],
	[51,82],
	[35,16],
	[15,86],
	[78,89],
	[41,98],
	[70,46],
	[79,79],
	[24,40],
	[91,13],
	[59,73],
	[35,32],
	[40,31],
	[14,31],
	[71,35],
	[96,18],
	[27,39],
	[28,38],
	[41,36],
	[31,63],
	[52,48],
	[81,25],
	[49,90],
	[32,65],
	[25,45],
	[63,94],
	[89,50],
	[43,41]
]

n = 100
k = 100
r_q = 48
c_q = 81

p queensAttack(n, obstacles, r_q, c_q, obstacles )


