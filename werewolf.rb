class Werewolf
  attr_reader :name, :location, :human

  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
    @werewolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def change!
    if @human == true
      @human = false
      @werewolf = true
      @hungry = true
    else
      @human = true
      @werewolf = false
    end
    #refactor this to remove if else statements
  end

  def werewolf?
    @werewolf
  end

  def hungry?
    @hungry
  end

end
