class Passenger

    attr_reader :name

    @@all = []

    def initialize(passenger_name) # A Passenger should be initialized with a name as a string. After the Passenger has been initialized, it shouldn't be changed, Passenger#name returns the name of the passenger
        @name = passenger_name
        @@all << self
    end

    def self.all # Passenger.all returns an array of all Passengers
        @@all
    end

    def rides # Passenger#rides returns an array of Ride instances that this person has been on
        Ride.all.select { |ride| ride.passenger == self }
    end

    def drivers # Passenger#drivers returns an array of Driver instances that this person has rode with
        self.rides.map { |ride| ride.driver }
    end

    def total_distance # Passenger#total_distance returns the floating number that represents the total distance the passenger has travelled using the service
        self.rides.map { |ride| ride.distance }.sum
    end

    def self.premium_members # Passenger.premium_members returns an array of all Passengers who have travelled over 100 miles in total with the service
        premium_passengers = []
        Passenger.all.each do |passenger|
            if passenger.total_distance > 100
                premium_passengers << passenger
            end
        end
        premium_passengers
    end

end