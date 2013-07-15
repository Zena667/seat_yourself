class Reservation < ActiveRecord::Base
  attr_accessible :day_id, :hour_id, :party_size, :restaurant_id, :user_id

  belongs_to :day
  validates :day_id, presence: true
  belongs_to :hour
  validates :hour_id, presence: true
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  belongs_to :user
  validates :user_id, presence: true
  validates :party_size, presence: true
end
