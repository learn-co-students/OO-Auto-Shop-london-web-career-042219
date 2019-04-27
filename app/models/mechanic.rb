class Mechanic

  @@all = []

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def serviced_cars
    # Get a list of cars said mechanic looks after
    Car.all.select{|car_info| car_info.mechanic == self}
  end

  def owners
    # Get a list of owners that see said mechanic
    Car.all.select{|car_info| car_info.mechanic == self}.map{|info| info.owner}
  end

  def owners_names
    # Get a list of owners that see said mechanic
    self.owners.map{|info| info.name}
  end
end
