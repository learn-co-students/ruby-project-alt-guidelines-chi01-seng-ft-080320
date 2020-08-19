class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flight do |t|
      t.string :airline_name
      t.string :date
      t.string :destination 

      #t.timestamps
    end 
  end
end
