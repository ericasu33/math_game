class Question
  attr_reader :num1, :num2, :result

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @result = self.num1 + self.num2
  end

  def question
    puts "What does #{num1} plus #{num2} equal?"
  end

  def answer(num)
    if self.result === num 
      return true
    else
      return false
    end
  end

end

# q1 = Question.new

# q1.question
# puts q1.answer(5)