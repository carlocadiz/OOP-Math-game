require_relative './game'

class Question

#attr_reader :question, :answer

  def initialize
    @number1 = rand(20)
    @number2 = rand(20)

   # @question = "#{@number1} + #{@number2}"
   # @answer = @number1 + @number2
  end

  def question
     "#{@number1} + #{@number2}"
  end

  def answer(num)
    num == @number1 + @number2
  end
end