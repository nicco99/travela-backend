class ChangeDriverNumberInBuses < ActiveRecord::Migration[7.0]
  def change
    change_column :buses, :driver_number, :string
  end
end
