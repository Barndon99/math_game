class Question
  def initialize(a, b)
    @num_one = a
    @num_two = b
    @question = "What is #{a} + #{b}?"
    @answer = @num_one + @num_two
  end

  attr_reader :num_one, :num_two, :answer, :question
end