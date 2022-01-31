require './questions'
require './players'
require './game'

player_1 = Player.new
player_2 = Player.new

players = [player_1, player_2]

game = Game.new
game.start(players)