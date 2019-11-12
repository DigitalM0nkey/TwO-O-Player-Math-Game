require './Questions'
require './Players'

class Round
  def initialize(player)
    @player = player
  end

  def start
    puts "---------NEW TURN---------"
    question = Questions.new
    puts "#{@player.name}, #{question.text}"
    answer = gets.chomp

    if question.correct?(answer)
    puts "Correct! The answer is #{question.answer}"
    puts @player.show
    else
    puts "Incorrect! The answer is #{question.answer}"
    @player.lost
    puts @player.show
    end
  end
end