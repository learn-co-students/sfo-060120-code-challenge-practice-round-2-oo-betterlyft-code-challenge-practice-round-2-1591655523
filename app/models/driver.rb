class Driver

    attr_reader :name

    @@all = []

    def initialize(driver_name) # A Driver should be initialized with a name as a string, # Driver#name returns the driver's name
        @name = driver_name
        @@all << self
    end

    def self.all # Driver.all returns an array of all Drivers
        @@all
    end

    def rides # Driver#rides returns an array of all Rides a driver has made
        Ride.all.select { |ride| ride.driver == self }
    end

    def passenger_names # Driver#passenger_names returns an array of all Passengers' names a driver has driven. The names should be unique (no repeats).
        passengers = []
        Ride.all.each do |ride|
            if ride.driver == self
                passengers << ride.passenger.name
            end
        end
        passengers.uniq
    end

    def total_distances
        self.rides.map { |ride| ride.distance }.sum
    end
        
    def self.mileage_cap(distance)# Driver.mileage_cap(distance) takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
        drivers = []
        Driver.all.each do |driver|
            if driver.total_distances > distance
                drivers << driver
            end
        end
        drivers
    end

end
