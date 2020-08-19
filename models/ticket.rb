class Ticket < ActiveRecord::Base 
    belongs_to :passanger
    belongs_to :flight

end