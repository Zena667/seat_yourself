class Restaurant < ActiveRecord::Base
  attr_accessible :name, :address, :description, :menu, :neighbourhood, :price_range, :image, :cuisine_id
  belongs_to :cuisine
  has_many :days
end
