class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :neighbourhood
      t.string :price_range
      t.string :description
      t.string :menu

      t.timestamps
    end
  end
end
