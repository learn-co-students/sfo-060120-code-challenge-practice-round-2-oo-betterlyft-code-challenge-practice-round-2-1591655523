require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tony = Passenger.new("Tony")
steve = Passenger.new("Steve")
natasha = Passenger.new("Natasha")
clint = Passenger.new("Clint")

wanda = Driver.new("Wanda")
bruce = Driver.new("Bruce")
carol = Driver.new("Carol")

ride1 = Ride.new(wanda, tony, 4.3)
ride2 = Ride.new(bruce, steve, 5)
ride3 = Ride.new(carol, natasha, 210)
ride4 = Ride.new(wanda, clint, 101)
ride5 = Ride.new(bruce, tony, 2)
ride6 = Ride.new(wanda, steve, 3.1)
ride7 = Ride.new(wanda, tony, 1.1)

# Put your variables here~!

binding.pry
