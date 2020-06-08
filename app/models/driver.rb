class Driver 
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def driver_and_ride 
        Ride.all.select do |ride| 
            Ride.driver == self 
        end 
    end 

    def passenger_names 
        driver_and_ride.map do |driver| 
            driver.passenger_names.uniq
        end 
    end 


    def rides 
        driver_and_ride.map {|rides| rides.driver == self }
    end 

    def self.all 
        @@all 
    end 
    
    def self.mileage_cap(distance)
        Ride.all.select do |ride| 
            Ride.distance >= mileage_cap
        end 
    end 


end 
