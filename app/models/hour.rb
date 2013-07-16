class Hour < ActiveRecord::Base
  attr_accessible :day_id, :open_seats, :time_slot

  belongs_to :day
  validates :day_id, presence: true
  has_many :reservations
  validates :open_seats, :time_slot, presence: true
  default_scope -> { order('time_slot ASC')}
end
