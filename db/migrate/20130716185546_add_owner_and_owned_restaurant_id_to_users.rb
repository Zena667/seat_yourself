class AddOwnerAndOwnedRestaurantIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :owner, :boolean, default: false
    add_column :users, :owned_restaurant_id, :integer, default: 0
  end
end
