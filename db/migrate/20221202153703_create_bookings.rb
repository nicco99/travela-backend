class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :trip_id
      t.integer :passenger_id
      t.string :departure
      t.string :start
      t.string :destination

      t.timestamps
    end
  end
end
