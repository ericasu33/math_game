require './player'
require './question'
require './result'
require './helper'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

while player1.total_lives > 0 && player2.total_lives > 0 do

  if game(player1, player2, 1) || game(player1, player2, 2) == "exit"
    break
  end

end
