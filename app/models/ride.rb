class Ride 
    attr_accessor :driver, :passenger, :distance 
    @@all = [] 
    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger 
        @distance = distance 
        @@all << self 
    end 

    def self.average_distance 
        (all.collect {|ride| ride.distance}.sum)/(ride.length)
    end 
end 