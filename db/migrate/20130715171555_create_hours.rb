class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.integer :open_seats
      t.integer :time_slot
      t.integer :day_id

      t.timestamps
    end
  end
end
