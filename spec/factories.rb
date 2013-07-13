FactoryGirl.define do
  factory :restaurant do
    name "Food"
    address "123 Road"
    description "Lots of food"
    menu "This is a menu"
    image "http://enroute.aircanada.com/files/medias/CBNRintropicture.jpg"
    neighbourhood "City"
    price_range "$$$$"
  end
  factory :user do
    name     "Zena Bielewicz"
    email    "zena@gmail.com"
    password "123"
    password_confirmation "123"
  end
end