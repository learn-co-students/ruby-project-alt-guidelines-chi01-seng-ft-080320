class Passanger < ActiveRecord::base 
    has_many :tickets 
    has_many :flights, {through: :tickets}
end  