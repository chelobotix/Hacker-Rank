def queensAttack(n, k, r_q, c_q, obstacles)
  # Write your code here
  # construct the board
  board = Array.new(n){Array.new(n,0)}
  # adjust queen position to an array format
  r_q = r_q - 1
  c_q = c_q - 1
  # put queen position on the board
  board[r_q][c_q] = 1

  sum = 0

  #sum row
  (r_q-1).downto(0).each do |i|
    if board[r_q][i] == 0
      board[r_q][i] = 5
      sum += 1
    else
      next
    end
  end

  (r_q+1..n-1).each do |i|
    if board[r_q][i] == 0
      board[r_q][i] = 5
      sum += 1
    else
      next
    end
  end

  #sum column
  (c_q-1).downto(0).each do |i|
    if board[i][c_q] == 0
      board[i][c_q] = 5
      sum += 1
    else
      next
    end
  end

  (c_q+1..n-1).each do |i|
    if board[i][c_q] == 0
      board[i][c_q] = 5
      sum += 1
    else
      next
    end
  end

  #sum diagonals
  #1
  i = r_q - 1
  j = c_q - 1
  while i >= 0 && j >= 0
    if board[i][j] == 0
      board[i][j] = 5
      sum += 1
    else
      next
    end
    i -= 1
    j -= 1
  end
  #2
  i = r_q + 1
  j = c_q + 1
  while i <= n - 1 && j <= n -1
    if board[i][j] == 0
      board[i][j] = 5
      sum += 1
    else
      next
    end
    i += 1
    j += 1
  end

  #3
  i = r_q - 1
  j = c_q + 1
  while i >= 0 && j <= n - 1
    if board[i][j] == 0
      board[i][j] = 5
      sum += 1
    else
      next
    end
    i -= 1
    j += 1
  end
  #4
  i = r_q + 1
  j = c_q - 1
  while i <= n - 1 && j >= 0
    if board[i][j] == 0
      board[i][j] = 5
      sum += 1
    else
      next
    end
    i += 1
    j -= 1
  end

  sum

end

# n = 8
# k = 0
# r_q = 4
# c_q = 4
# obstacles = []
# queensAttack(n, obstacles, r_q, c_q, obstacles )

# n = 4
# k = 0
# r_q = 4
# c_q = 4
# obstacles = []
# queensAttack(n, obstacles, r_q, c_q, obstacles )

n = 5
k = 0
r_q = 4
c_q = 3
obstacles = []
queensAttack(n, obstacles, r_q, c_q, obstacles )

