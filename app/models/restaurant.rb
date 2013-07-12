class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :menu, :neighbourhood, :price_range
end
