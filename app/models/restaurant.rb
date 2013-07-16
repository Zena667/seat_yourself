class Restaurant < ActiveRecord::Base
  attr_accessible :name, :address, :description, :menu, :neighbourhood, :price_range, :image, :cuisine_id
  belongs_to :cuisine
  has_many :days
  validates :name, :address, :description, :menu, :neighbourhood, :price_range, :image, :cuisine_id, presence: true
  has_many :reservations
  has_many :hours, through: :days 
  has_many :points
end
