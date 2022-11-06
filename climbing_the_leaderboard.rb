
  def climbingLeaderboard(ranked, player)
    # Write your code here
    #makink array uniq
    ranked.uniq!
    #counting items below the lowest score
    under_score = player.count{|i| i < ranked[-1]}
    #counting items above or equal to the highest score
    over_score = player.count{|i| i >= ranked[0]}
    #deleting items
    player.reject! {|i| i < ranked[-1] || i >= ranked[0] }

    #create LeaderBoard array
    array = []
    leader_board = Array.new(under_score, ranked.length + 1)

    #mapping raiting
    counter = ranked.length
    ranked.reverse!
    ranked.each_with_index do |rank, i|
      if player.length > 0
        while player[0] < ranked[i+1]
          leader_board.push(counter)
          player.delete_at(0)

          if player.length == 0
            break
          end
        end
      end
      counter -= 1

    end
    #adding the first place to a leader_board array
    over_score.times { |i| leader_board.push(1)}
    #return array
    leader_board
  end


ranked1 = [100,90,90,80]
players_score1 = [70, 80, 105]
ranked2 = [100,100,50,40,40,20,10]
players_score2 = [5, 25, 50, 120]
p climbingLeaderboard(ranked1, players_score1)





