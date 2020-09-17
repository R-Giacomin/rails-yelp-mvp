Restaurant.destroy_all

10.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample)
  restaurant.save!
    rand(1..5).times do
      review = Review.new(content: Faker::Restaurant.review, rating: rand(0..5))
      review.restaurant = restaurant
      review.save!
    end
end
