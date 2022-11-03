def climbingLeaderboard(ranked, player)
  # Write your code here
  # ensure uniq
  ranked = ranked.uniq

  results = []
  # point to the last spot
  rank_ptr = ranked.size - 1

  # two pointers moving around?
  player.each do |score|
      if score < ranked[rank_ptr]
          # 1 based, actual spot is behind the one comparing
          results.push(rank_ptr + 2)
      else
          # moving rank_ptr until it's actually bigger than score
          while(ranked[rank_ptr] <= score && rank_ptr >= 0)
              rank_ptr -= 1
          end
          # ok find the one
          results.push(rank_ptr + 2)
      end
  end
  results




end

ranked1 = [100,90,90,80]
players_score1 = [70, 80, 105]
ranked2 = [100,100,50,40,40,20,10]
players_score2 = [5, 25, 50, 120]
climbingLeaderboard(ranked2, players_score2)





