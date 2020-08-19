class Flight < ActiveRecord::base 
    has_many :tickets 
    has_many :passangers, {through: :tickets}
end 