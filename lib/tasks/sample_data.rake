namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Zena",
      email: "zena@gmail.com",
      password: "123",
      password_confirmation: "123")


    owner = User.create!(name: "Eric",
      email: "eric@gmail.com",
      password: "123",
      password_confirmation: "123",
      owned_restaurant_id: 1)
    owner.toggle!(:owner)

    Cuisine.create!(name: "Pub Food")
    Cuisine.create!(name: "French")

    5.times do |n|
      name = Faker::Company.name
      address = Faker::Address.street_address
      neighbourhood = Faker::Address.city
      price_range = "#{n+1}"
      description = Faker::Company.catch_phrase
      menu = Faker::Company.bs
      Restaurant.create!(name: name,
        address: address,
        neighbourhood: neighbourhood,
        price_range: price_range,
        description: description,
        menu: menu,
        cuisine_id: 1,
        image: "http://enroute.aircanada.com/files/medias/CBNRintropicture.jpg")
    end
    5.times do |n|
      name = Faker::Company.name
      address = Faker::Address.street_address
      neighbourhood = Faker::Address.city
      price_range = "#{n+1}"
      description = Faker::Company.catch_phrase
      menu = Faker::Company.bs
      Restaurant.create!(name: name,
        address: address,
        neighbourhood: neighbourhood,
        price_range: price_range,
        description: description,
        menu: menu,
        cuisine_id: 2,
        image: "http://enroute.aircanada.com/files/medias/CBNRintropicture.jpg")
    end

    #Create 31 days
    Restaurant.all.each do |x|
      31.times do |d|
        Day.create!(day: d+1,
        month: 7,
        year: 2013,
        restaurant_id: x.id)
      end
    end

    #Create 9 hours
    Day.all.each do |d|
      x = 10
      9.times do 
        Hour.create!( 
          time_slot: x+=1,
          day_id: d.id,
          open_seats: 100
          )
      end
    end

    Point.create!(
      earned: 1000,
      spent: 100,
      restaurant_id: 1,
      user_id: 1)
  end
end

