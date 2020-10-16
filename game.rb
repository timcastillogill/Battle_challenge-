require './app'

class Game

  def initialize
    @log = []
  end

  def attack(perp, victim)
    victim.take_damage
    @log << "#{perp} attacked #{victim}!"
  end

  def log
    @log
  end

end
