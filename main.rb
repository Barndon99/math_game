require "./game.rb"
require "./player.rb"
require "./question"

puts "Enter name Player 1: "
name0 = gets.chomp.to_s
puts "Enter name Player 2: "
name1 = gets.chomp.to_s

player0 = Player.new(name0)
player1 = Player.new(name1)

game = Game.new(player0, player1)

game.start