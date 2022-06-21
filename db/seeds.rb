# frozen_string_literal: true

# Seeding 5 restaurants

5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.phone_number.split(' ')[0]
  )
end
