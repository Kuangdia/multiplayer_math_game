require './players'

class Game
  @@player = 0

  def start(players)
    puts "----- New Turn -----"
    question = Question.new
    puts "#{players[0].long_p}: #{question.q}"
    print "> "
    answer = $stdin.gets.chomp
      if answer.to_i == question.number1 + question.number2
        puts "#{players[0].long_p}: YES! You're correct."
      else
        players[0].lose_life
        puts "#{players[0].long_p}: Seriously? No!"
      end

    if players[0].score == 0
      puts "#{players[1].long_p} wins with a score of #{players[1].final_score} \n----- GAME OVER -----\nGood Bye!"
    else
      players.reverse!
      puts "#{players[1].short_p}: #{players[1].final_score} vs #{players[0].short_p}: #{players[0].final_score}"
      start(players)
    end
  end
end
