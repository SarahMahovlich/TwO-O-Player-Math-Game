class Game
  attr_accessor :current_player, :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def start_game
    puts "New game started"

    while !(player1.score <= 0 || player2.score <= 0) do
      # start new round
      puts "----- NEW TURN -----"
      question = Question.new(current_player)
      puts question.make_question
      
      # ask for user input
      print "> "
      player_answer = $stdin.gets.chomp.to_i

      # validate answer and update score
      if player_answer != question.answer
        @current_player.score -= 1
      end

      # switch current player
      if @current_player == player1
        @current_player = player2
      elsif @current_player == player2
        @current_player = player1
      end
      
      puts "#{@player1} vs #{@player2}"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)

  end  

end