class CreateBuses < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.integer :seats
      t.string :number_plate
      t.integer :driver_number

      t.timestamps
    end
  end
end
