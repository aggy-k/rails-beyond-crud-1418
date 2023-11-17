# 30.times do
#   restaurant = Restaurant.create(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.street_name,
#     rating: rand(1..5)
#   )
#   puts "Created restaurant #{restaurant.name}"
# end

Restaurant.all.each do |restaurant|
  restaurant.update(
    chef_name: Faker::TvShows::GameOfThrones.character,
    chef_description: Faker::TvShows::GameOfThrones.quote
  )

end