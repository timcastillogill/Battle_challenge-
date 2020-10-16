require './app'

class Game

  def initialize
    @log = []
  end

  def attack(perp, victim)

    victim.take_damage
    @log << "#{perp.name} attacked #{victim.name}!"
  end

  def log
    @log
  end

end
