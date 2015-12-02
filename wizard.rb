require 'pry'
class Wizard
  attr_reader :name
  attr_accessor :bearded, :cast_counter

  def initialize(name, bearded={bearded: true})
    @name = name
    # binding.pry
    @bearded = bearded[:bearded]
    @rested = true
    @cast_counter = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    @rested = (@cast_counter < 3)
    @rested
  end

  def cast
    @cast_counter += 1
    "MAGIC MISSILE!"
  end

end
