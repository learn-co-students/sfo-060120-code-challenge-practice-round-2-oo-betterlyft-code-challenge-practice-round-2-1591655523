class Driver
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def rides
        Ride.all.select { |ride| ride.driver == self }
    end

    def passenger_names
        self.rides.collect { |ride| ride.passenger.name }.uniq
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        driver_cap = []
        self.all.select do |driver|
            if driver.rides.sum { |ride| ride.distance} > distance
                driver_cap << driver
            end
        end
        driver_cap
    end
end
