require_relative 'player'
require_relative 'game'
require_relative 'question'

# player_1 = Player.new("player1")
# player_2 = Player.new("player2")

Game.new(Player.new("player1"), Player.new("player2")).start_game



