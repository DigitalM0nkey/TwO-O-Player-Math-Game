require './Players'
require './Round'

class Game
  def initialize
    @playerOne = Player.new
    @playerTwo = Player.new
  end

def start
  puts "Player one. What is your name?"
  @playerOne.name = gets.chomp
  puts "Hello #{@playerOne.name}! Who is your opponent?"
  @playerTwo.name = gets.chomp
  puts "The challenge between #{@playerOne.name} & #{@playerTwo.name} starts now!"
  while @playerOne.alive? && @playerTwo.alive?
    Round.new(@playerOne).start
    if @playerOne.alive?
    Round.new(@playerTwo).start
  end
  
end
puts "---------GAME OVER----------"
end

end