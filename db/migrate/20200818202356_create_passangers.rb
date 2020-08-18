class CreatePassangers < ActiveRecord::Migration[5.2]
  def change
    create_table :passangers do |t|
      t.string :name 
      t.string :destination 
    end 
  end
end
