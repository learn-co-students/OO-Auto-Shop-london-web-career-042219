class Car

  @@all = []

  attr_reader :make, :model, :classification,:owner, :mechanic

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @owner = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    # Get a list of all car classifications
    self.all.map{|car_info| car_info.classification}
  end

  def mechanics_with_skills
    # Get a list of mechanics that have an expertise that matches the car classification
    Mechanic.all.select{|info| info.specialty == self.classification}
  end

end
