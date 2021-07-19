class Players
# initialize players and collect names, lives, is it there turn?
  attr_accessor :name, :lives, :turn
  def initialize(name)
    @name = name
    @lives = 3
    @turn = false
  end

  def wrong_answer
    @lives -= 1;
  end
end