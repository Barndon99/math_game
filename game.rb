class Game
#Initialize collect names for players
  attr_accessor :players, :round, :player_turn
  def initialize(player1, player2)
    @players = [player1, player2]
    @round = 0
    @player_turn = @players[@round]
  end

end