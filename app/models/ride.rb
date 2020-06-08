class Ride
    attr_accessor :driver, :passenger, :distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_distance = self.all.sum { |ride| ride.distance }
        total_distance / self.all.length
    end
end