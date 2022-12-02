class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :rce
      t.string :trip
      t.integer :bus_id
      t.integer :route_id
      t.string :departure

      t.timestamps
    end
  end
end
