class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :passanger_id
      t.integer :flight_id
      t.boolean :baggage
    end
  end
end
