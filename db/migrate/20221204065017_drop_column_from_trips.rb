class DropColumnFromTrips < ActiveRecord::Migration[7.0]
  def change
    remove_column :trips, :rce
  end
end
