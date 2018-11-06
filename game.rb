require_relative './question'
require_relative './player'

class Game
  attr_reader :players, :current_index


  def initialize
    # Our list of players
    @players = [
               Player.new('Carlo'),
               Player.new('Olivia')
               ]
    @current_index = 0
  end

  def play

  #while loop until currentplayer.lives > 0

    while (true) do

      question = Question.new()
      puts "#{players[current_index].name} What is #{question.question}"
      input = gets.chomp.to_i

      if  question.answer(input)
        puts "Yes. You are correct!"
      else
        puts "Seriously? No!"
        players[current_index].lives -= 1
      end

       players[current_index].game_over? ? break : print_summary
       switch_player

    end
    final_summary
  end

def print_summary
  puts ""
  puts "P1 #{players[0].lives}/3 vs p2 #{players[1].lives}/3"
  puts "-----NEW TURN-----"
  puts ""
end

def final_summary
  puts ""
  switch_player
  puts "#{players[current_index].name} wins with #{players[current_index].lives}/3"
  puts "-----GAME OVER-----"
end

def switch_player
   @current_index == 0 ? @current_index = 1 : @current_index = 0
end






end