class Hobbit
  attr_reader :name, :disposition
  attr_accessor :adult, :age, :old

  def initialize(name, disposition="homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
  end

  def celebrate_birthday
    @age += 1
    @adult = (@age > 32)
    @old = (@age > 100)
  end

  def adult?
    @adult
  end

  def old?
    @old
  end

  def has_ring?
    @name == "Frodo"
  end

  def is_short?
    true
  end

end
