def climbingLeaderboard(ranked, player)
  # Write your code here

  #mapping raiting
  counter = 1
  aux = ranked[0]
  array = []
  leader_board = []
  ranked.each do |number|
    if number == aux
      array.push(counter)
    elsif number < aux
      counter += 1
      aux = number
      array.push(counter)
    end
  end
  aux = 0
  player.each_with_index do |score, i|
    if score >= ranked[0]
      leader_board.push(array[0])
    elsif score == ranked[-1]
      leader_board.push(array[-1])
    elsif score < ranked[-1]
      leader_board.push(array.max + 1)
    else
      (0...ranked.length - 1).each do |j|
        if score.between?(ranked[j+1], ranked[j])
          leader_board.push(array[j+1])
          break
        end
      end
    end

  end
  leader_board
end

ranked1 = [100,90,90,80]
players_score1 = [70, 80, 105]
ranked2 = [100,100,50,40,40,20,10]
players_score2 = [5, 25, 50, 120]
p climbingLeaderboard(ranked2, players_score2)




