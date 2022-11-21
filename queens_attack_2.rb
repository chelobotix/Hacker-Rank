def queensAttack(n, k, r_q, c_q, obstacles)
  # Write your code here
  #construct the board
  board = Array.new(n,Array.new(n,0))
  board[r_q-1][c_q-1] = 2
  p board

end

n = 8
k = 0
r_q = 4
c_q = 4
obstacles = []


queensAttack(n, obstacles, r_q, c_q, obstacles )
