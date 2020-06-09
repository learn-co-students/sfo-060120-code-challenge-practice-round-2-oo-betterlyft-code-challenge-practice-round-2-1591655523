class Ride

    attr_reader :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance) # A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. 3.2). The distance refers to miles, # Ride#passenger returns the Passenger object for that ride, Ride#driver returns the Driver object for that ride, # Ride#distance returns the distance of the ride
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end    

    def self.all
        @@all
    end
  
    def self.average_distance # Ride.average_distance returns the average distance across ALL rides
        distances = all.map { |ride| ride.distance }.sum/all.length
    end

end
