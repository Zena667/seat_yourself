class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :party_size
      t.integer :restaurant_id
      t.integer :day_id
      t.integer :hour_id
      t.integer :user_id

      t.timestamps
    end
  end
end
