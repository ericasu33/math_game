class Result
  def score(p1, p2)
    puts "P1: #{p1.total_lives}/3 vs P2: #{p2.total_lives}/3"
  end

  def winner(player, life)
    puts "#{player} wins with a score of #{life}/3"
  end

  def gameover
    puts "Good bye!"
  end
end
