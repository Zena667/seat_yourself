class Point < ActiveRecord::Base
  attr_accessible :earned, :restaurant_id, :spent, :user_id

  belongs_to :restaurant
  belongs_to :user

end
