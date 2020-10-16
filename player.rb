require './app'

class Player

  attr_reader :name, :hp

  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end

  def take_damage(damage = 10)
    @hp -= damage
    @hp
  end

end
