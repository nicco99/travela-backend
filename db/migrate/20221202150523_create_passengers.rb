class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :username
      t.string :email
      t.integer :p_number
      t.string :password_digest

      t.timestamps
    end
  end
end
