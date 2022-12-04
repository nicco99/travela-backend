class AddAndRemoveColumnsRoutes < ActiveRecord::Migration[7.0]
  def change
    add_column :routes, :start, :string
    add_column :routes, :destination, :string
  end
end
