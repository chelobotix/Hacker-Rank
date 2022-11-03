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
  ranking = 0
  player.each do |score|
    if score < ranked.min
      leader_board.push(array.max + 1)
    elsif score >= ranked.max
      leader_board.push(1)
    else
      index = 0
      maximum_value = 10 ** 9
      control = false
      ranked.each_with_index do |elem, i|
        if score == elem
          leader_board.push(array[i])
          control = false
          break
        elsif elem == ranked.max
          next
        else
          closer = (elem - score)
          if closer <= maximum_value && closer > 0
            maximum_value = closer
            index = i
            control = true
          elsif closer < 0
            break
          end
        end
      end
      if control
        leader_board.push(array[index + 1])
      end
    end

  end



  leader_board
end

ranked1 = [100,90,90,80]
players_score1 = [70, 80, 105]
ranked2 = [100,100,50,40,40,20,10]
players_score2 = [5, 25, 50, 120]
p climbingLeaderboard(ranked1, players_score1)





