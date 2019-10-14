class Player
  attr_accessor :score
  attr_reader :name

  def initialize(name)
    @name = name
    @score = 3
  end

  def to_s
    "#{@name}: #{@score}/3"
  end
 
end