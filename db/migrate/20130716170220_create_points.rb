class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :earned
      t.integer :spent
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
