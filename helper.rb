def game(player1, player2, turn)

  player = turn == 1 ? player1 : player2

  question = Question.new
  print "#{player.name}: " 
  print question.question

  answer = gets.chomp.to_i

  if question.answer(answer)
    player.right_answer
  else
    player.wrong_answer
  end

  result = Result.new

  result.score(player1, player2)

  if player1.total_lives == 0 || player2.total_lives == 0
    winner = turn == 1 ? player2 : player1

    result.winner(winner.name, winner.total_lives)
    puts "------GAME OVER-------"
    result.gameover
    return "exit"
  else

  puts "-----NEW TURN------"
  end
end