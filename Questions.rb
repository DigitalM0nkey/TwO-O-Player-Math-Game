class Questions

attr_reader :answer

  def initialize
    @a = rand(19) +1
    @b = rand(19) +1
    @answer = @a + @b
  end

  def text
    "What is #{@a} + #{@b}?"
  end

  def correct?(answer)
    @answer == answer.to_i
  end

end