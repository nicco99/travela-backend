class ChangePNumberInPassengers < ActiveRecord::Migration[7.0]
  def change
    change_column :passengers, :p_number, :string
  end
end
