class Player
# initialize players and collect names, lives, is it there turn?
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
end