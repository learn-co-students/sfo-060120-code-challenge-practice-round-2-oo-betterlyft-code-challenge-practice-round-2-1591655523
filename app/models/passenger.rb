
class Passenger

    attr_reader :name

    @@all = [ ]

    def initialize(name)
        @name = name

        @@all << self
    end

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        rides.collect {|ride| ride.drivers }
    end

    def total_distance
        rides.collect{|ride| ride.distance}.sum
    end

    def self.all
        @@all
    end

    def self.premium_members
        self.all.select {|passenger| passenger.total_distance > 100}
    end

end