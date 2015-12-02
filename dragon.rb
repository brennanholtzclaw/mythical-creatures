class Dragon
  attr_reader :name, :color, :rider
  attr_accessor :hungry

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @eat_counter = 0
    @hungry = true
  end

  def hungry?
    @hungry
  end

  def eat
    @eat_counter += 1
    @hungry = false if @eat_counter > 2
  end

end
