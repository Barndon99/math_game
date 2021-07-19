class Question
  def initialize(a, b)
    @num_one = a
    @num_two = b
    @question = "What is #{a} + #{b}?"
  end

  attr_accessor :num_one, :num_two, :question

  def correct_answer
    @num_one + @num_two
  end
end

question1 = Question.new(1, 2)
puts "#{question1.question}"
puts "#{question1.correct_answer}"