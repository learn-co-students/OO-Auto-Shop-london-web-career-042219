require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### CarOwner Tests ###
harry = CarOwner.new("Harry")
ron = CarOwner.new("Ron")
hermione = CarOwner.new("Hermione")

### Mechanic Tests ###
snape = Mechanic.new("Snape", "magic")
hagrid = Mechanic.new("Hagrid", "plain")
dumbledor = Mechanic.new("Dumbledor", "fancy")

### Car Tests ###
car1 = Car.new("Ford", "123", "plain", harry, hagrid)
car5 = Car.new("Dragon", "654", "magic", harry, snape)
car2 = Car.new("Mercedes", "456", "fancy", ron, dumbledor)
car6 = Car.new("Pegasus", "321", "magic", ron, snape)
car3 = Car.new("VW Bug", "789", "plain", hermione, hagrid)
car4 = Car.new("Broom", "987", "magic", hermione, snape)
car7 = Car.new("Lambergini", "198", "fancy", hermione, dumbledor)

binding.pry

puts "Mischief Managed!"
