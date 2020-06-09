require 'pry'

require_relative '../config/environment.rb'
# require_relative '../app/models/driver.rb'
# require_relative '../app/models/passenger.rb'
# require_relative '../app/models/ride.rb'

def reload
  load 'config/environment.rb'
end

# Driver (driver_name)
abigail = Driver.new("Abigail")
ben = Driver.new("Ben")
catherine = Driver.new("Catherine")

# Passenger (passenger_name)
daniel = Passenger.new("Daniel")
edward = Passenger.new("Edward")
frank = Passenger.new("Frank")

# Ride (driver, passenger, distance)
r1 = Ride.new(abigail, daniel, 30)
r2 = Ride.new(abigail, edward, 40)
r3 = Ride.new(abigail, frank, 100)
r4 = Ride.new(abigail, frank, 120)
r5 = Ride.new(ben, daniel, 35)
r6 = Ride.new(ben, frank, 110)
r7 = Ride.new(catherine, daniel, 20)
r8 = Ride.new(catherine, edward, 25)

binding.pry
