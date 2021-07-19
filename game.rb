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

  def change_player_turn
    if @player_turn == @players[0]
      @player_turn = @players[1]
    else 
      @player_turn = @players[0]
    end
  end

  def wrong_answer
    @player_turn.lives -= 1
    if @player_turn.lives == 0
      puts "#{@player_turn.name}, you lose! \n ----- GAME ENDED -----" 
    end
  end

  def current_score
    puts "The current score is #{@players[0].name}: #{@players[0].lives}/3 to #{@players[1].name}: #{@players[1].lives}/3!"
  end

  def inc_rounds
    @round += 1
  end

end
