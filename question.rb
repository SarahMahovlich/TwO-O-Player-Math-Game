class Question
  attr_accessor :players_turn, :question, :answer

  def initialize(name)
    @players_turn = name
    @question = nil
    @answer = nil
  end

  def make_question
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    @answer = @num1 + @num2

    @question = "#{@players_turn.name}: What does #{@num1} + #{@num2} equal?"
  end 

end
