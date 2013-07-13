class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :restaurant_id
      t.integer :day
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end
end
