require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts 'Creating 10 fake restaurants...'
10.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: [ "chinese", "italian", "japanese", "french", "belgian" ].sample
  )
  restaurant.save!
end
puts 'Finished!'
