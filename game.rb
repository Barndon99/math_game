class Game
#Initialize collect names for players
  def initialize(player1, player2)
    @Players = [player1, player2]
    @Round = 0
    @Player_turn = @Players[@Round]
  end

end