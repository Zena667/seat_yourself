class Restaurant < ActiveRecord::Base
  attr_accessible :name, :address, :description, :menu, :neighbourhood, :price_range, :image
end
