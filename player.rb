
class Player

  MAX_LIVES = 3

  attr_accessor :lives
  attr_reader :name

  def initialize name
    @name = name
    @lives = MAX_LIVES
  end

  def game_over?
    lives == 0
  end



end
