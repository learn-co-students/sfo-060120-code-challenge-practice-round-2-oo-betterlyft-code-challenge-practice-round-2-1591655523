
class Ride

    attr_accessor :passenger, :driver, :distance

    @@all = [ ]

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        distances = self.all.collect{|ride| ride.distance}
        distances.sum / distances.count
    end

end