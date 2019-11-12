class Player

  attr_accessor :name, :lives

  def initialize(name = "player")
    @name = name
    @lives = []
  end

  def lost
    @lives.push("X")
  end

  def show
    @name + " Current Score = " + @lives.join
  end

  def alive?
    @lives.length < 3
  end

end
