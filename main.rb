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

unless player0.lives == 0 || player1.lives == 0
  puts "----- Round #{game.round} -----"

  puts "First number?"
  num1 = gets.chomp.to_i
  puts "Second number?"
  num2 = gets.chomp.to_i

  question = Question.new(num1, num2)

  puts "#{game.player_turn.name}: #{question.question}"

  answer = gets.chomp.to_i

  if (answer == question.answer)
    puts "Correct!"
  end

  if (answer != question.answer)
    game.wrong_answer
  end

  puts game.current_score

  game.inc_rounds

  game.change_player_turn
end