5.times do
  r = Restaurant.create({ name: Faker::CryptoCoin.coin_name, address: Faker::Address.street_address, category: %w[chinese italian japanese french belgian].sample})
  rev = Review.create({ content: Faker::Lorem.sentence, rating: [0, 1, 2, 3, 4, 5].sample, restaurant: r })
end
