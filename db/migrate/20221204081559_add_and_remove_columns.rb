class AddAndRemoveColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :status, :string
    remove_column :bookings, :start
    remove_column :bookings, :destination
  end
end
