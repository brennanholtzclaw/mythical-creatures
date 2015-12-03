class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @cranky_counter = 0
    @laying = false
  end

  def shoot
    @cranky_counter += 1
    if @cranky_counter <= 3 && @laying == false
      "Twang!!!"
    else
      "NO!"
    end
    # refactor to remove if/else statements
  end

  def run
    @cranky_counter += 1
    if @cranky_counter <= 3 && @laying == false
      "Clop clop clop clop!!!"
    else
      "NO!"
    end
    # refactor to remove if/else statements
  end

  def cranky?
    @cranky = (@cranky_counter > 2)
  end

  def standing?
    @standing
  end

  def sleep
    @cranky = @cranky_counter = 0 if standing? == false
    "NO!" if standing? == true
    # "ZzzZzz"
  end

  def lay_down
    @laying = true
    @standing = false
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def laying?
    @laying
  end

  def drink_potion
    if standing? == true && cranky? == true
      @cranky_counter = 0
    elsif laying? == true
      "NO!"
    elsif cranky? == false
      "BLERGH!"
    end
  end

end
