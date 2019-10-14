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
        puts "No :("
      else
        puts "Correct :)"
      end

      # switch current player
      @current_player == player1 ? @current_player = player2 : @current_player = player1
      
      puts "#{@player1} vs #{@player2}"
      
    end
    puts "----- GAME OVER -----"
    puts "#{@current_player.name} wins with a score of #{@current_player.score}/3"
    puts "Good bye!"
    exit(0)

  end  

end