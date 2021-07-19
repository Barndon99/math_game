require "./player.rb"
require "./question.rb"

class Game
#Initialize collect names for players
  attr_accessor :players, :round, :player_turn
  def initialize(player1, player2)
    @players = [player1, player2]
    @round = 0
    @player_turn = @players[0]
  end

  def wrong_answer
    if @player_turn == @players[0] 
      @players[1].lives -= 1
      if @players[1].lives == 0
        abort("#{@players[1].name}, you lose! \n ----- GAME ENDED -----")
      end
    end
    if @player_turn == @players[1] 
      @players[0].lives -= 1
      if @players[0].lives == 0
        abort("#{@players[0].name}, you lose! \n ----- GAME ENDED -----")
      end
    end
  end

  def current_score
    puts "The current score is #{@players[0].name}: #{@players[0].lives}/3 to #{@players[1].name}: #{@players[1].lives}/3!"
  end

  def change_player_turn
    if @player_turn == @players[0]
      @player_turn = @players[1]
    else 
      @player_turn = @players[0]
    end
  end

  def inc_rounds
    @round += 1
  end

  def start
    while self.players[0].lives != 0 || self.players[1].lives != 0 do
      puts "----- Round #{self.round} -----"
      self.inc_rounds
    
      self.change_player_turn
    
      puts "First number?"
      num1 = gets.chomp.to_i
      puts "Second number?"
      num2 = gets.chomp.to_i
    
      question = Question.new(num1, num2)
    
      puts "#{self.player_turn.name}: #{question.question}"
    
      answer = gets.chomp.to_i
    
      if (answer == question.answer)
        puts "Correct!"
      end
    
      if (answer != question.answer)
        self.wrong_answer
      end
    
      puts self.current_score
    end
  end

end
