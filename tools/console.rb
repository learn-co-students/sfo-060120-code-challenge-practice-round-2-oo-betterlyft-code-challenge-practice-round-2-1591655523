require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ride1 = Ride.new("Dr1", "P1", "Dist1")
ride2 = Ride.new("Dr2", "P2", "Dist2")
ride3 = Ride.new("Dr3", "P3", "Dist3")

pass1 = Passenger.new("Name1")

driver1 = Driver.new("Driver1")
driver2 = Driver.new("Driver2")


binding.pry
