
class Driver

    attr_reader :name

    @@all = [ ]

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def passenger_names
        rides.collect {|ride| ride.passenger.name }.uniq
    end

    def self.all
        @@all
    end

    # extra method I created to give total distance driven by each driver instance
    def total_distance
        rides.collect{|ride| ride.distance}.sum
    end

    def self.mileage_cap(distance)
        self.all.select {|driver| driver.total_distance > distance}
    end



end