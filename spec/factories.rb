FactoryGirl.define do
  factory :cuisine do
    name "Pub Food"
  end

  factory :restaurant do
    name "Food"
    address "123 Road"
    description "Lots of food"
    menu "This is a menu"
    image "http://enroute.aircanada.com/files/medias/CBNRintropicture.jpg"
    neighbourhood "City"
    price_range "$$$$"
    cuisine
  end
  factory :user do
    name     "Zena Bielewicz"
    email    "zena@gmail.com"
    password "123"
    password_confirmation "123"
  end

  factory :day do
    day Time.now.strftime("%d").to_i
    month Time.now.strftime("%m").to_i
    year Time.now.strftime("%Y").to_i
    restaurant
  end

  factory :hour do
    open_seats 100
    time_slot 11
    day
  end  

  factory :reservation do
    party_size 2
    restaurant
    day
    hour
    user
  end

end