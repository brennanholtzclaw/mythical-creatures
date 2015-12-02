class Unicorn
attr_reader :name, :color

  def initialize(name, color="white")
    @color = color
    @name = name
  end

  def white?
    @color == "white"
  end

  def say(text)
    "**;* #{text} **;*"
  end

end
