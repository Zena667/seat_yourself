class Day < ActiveRecord::Base
  attr_accessible :day, :month, :restaurant_id, :year
  belongs_to :restaurant
end
