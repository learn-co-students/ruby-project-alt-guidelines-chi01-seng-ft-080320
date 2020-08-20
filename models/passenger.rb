class Passenger < ActiveRecord::Base 
    has_many :tickets 
    has_many :flights, {through: :tickets}

    def self.find_by_passenger_name(passenger_name)
        Passenger.find_by(name: passenger_name)
    end 
end  

