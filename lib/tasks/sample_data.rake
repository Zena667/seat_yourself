namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Zena",
      email: "zena@gmail.com",
      password: "123",
      password_confirmation: "123")
    50.times do |n|
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
        image: "http://enroute.aircanada.com/files/medias/CBNRintropicture.jpg")
    end
  end
end

