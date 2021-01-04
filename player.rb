class Player
  attr_reader :name
  attr_accessor :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def total_lives
    self.life
  end

  def wrong_answer
    self.life -= 1
    puts "#{name}: Seriously? No!"
  end

  def right_answer
    puts "#{name}: YES! You are correct."
  end
end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

# puts player1.name
# puts player1.total_lives
# player1.wrong_answer
# puts player1.total_lives
# puts player2.total_lives
# player2.right_answer