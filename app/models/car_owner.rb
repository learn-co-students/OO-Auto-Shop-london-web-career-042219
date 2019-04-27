class CarOwner

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def owners_car
    # Get a list of all cars said owner has
    Car.all.select{|car_info| car_info.owner == self}
  end

  def owners_mechanic
    # Get a list of mechanics said owner goes to
    self.owners_car.map{|info| info.mechanic}.uniq
  end

  def self.average_cars_owned
    # Get the average ammount of cars owned for all users
    Car.all.length / self.all.length.to_f
  end
end
