require "./game.rb"
require "./player.rb"
require "./question"

puts "Enter name Player 1: "
player1 = gets.chomp.to_s
puts "Enter name Player 2: "
player2 = gets.chomp.to_s

game = Game.new(player1, player2)

puts game.players