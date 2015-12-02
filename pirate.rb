class Pirate
  attr_reader :name, :job
  attr_accessor :cursed, :act_counter, :booty

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @cursed = false
    @act_counter = 0
    @booty = 0
  end

  def cursed?
    @cursed = (@act_counter > 2)
  end

  def commit_heinous_act
    @act_counter += 1
  end

  def rob_ship
    @booty += 100
  end

end
