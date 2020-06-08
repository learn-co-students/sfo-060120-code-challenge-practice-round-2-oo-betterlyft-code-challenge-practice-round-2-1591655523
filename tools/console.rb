require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
p1 = Passenger.new("Haleigh")
p2 = Passenger.new("Soundarya")
p3 = Passenger.new("Akiko")
p4 = Passenger.new("Danira")
p5 = Passenger.new("Danira")

d1 = Driver.new("Josh")
d2 = Driver.new("Daniel")
d3 = Driver.new("Gabriel")

r1 = Ride.new(p1, d1, 2.5)
r2 = Ride.new(p2, d2, 15)
r3 = Ride.new(p3, d3, 10.5)
r4 = Ride.new(p4, d1, 8)
r5 = Ride.new(p1, d1, 5)
r6 = Ride.new(p2, d3, 140)
r7 = Ride.new(p5, d1, 30)



binding.pry
 