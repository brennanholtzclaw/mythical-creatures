require 'pry'

class Medusa

  attr_reader :name, :statues, :stare

  def initialize(name)
    @name = name
    @statues = []
    @victims = 0
  end

  def stare(victim)
    if @statues.count < 3
      @statues << victim
      victim.stoned = true
    else
      unstoned = @statues.shift
      unstoned.stoned = false
      @statues << victim
      victim.stoned = true
    end
    @victims += 1
    # @statues << victim if (@statues.count < 3)
    # victim.stoned = true if (@statues.count < 3)
    #refactor to remove if statement
  end

  def alive?
    @victims < 5
  end

end



class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end
