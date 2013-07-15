class Day < ActiveRecord::Base
  attr_accessible :day, :month, :restaurant_id, :year
  
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  has_many :hours
  validates :day, :month, :year, presence: true
end
