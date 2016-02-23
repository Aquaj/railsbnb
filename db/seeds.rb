# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

puts "Seed started !"

puts "-- Creating Users"
users = Array.new(10) do |number|
  User.create!(name: Faker::Name.name, email: "test#{number+1}@test.com", password: "test"*3, password_confirmation: "test"*3, address: "#{Faker::Address.street_name} #{Faker::Address.city}")
end

puts "-- Creating Flats"
flats = Array.new(30) do |number|
  users.sample.flats.create!(description: "Test #{number+1}", address: "#{Faker::Address.street_name} #{Faker::Address.city}", price: (50..500).to_a.sample)
end

puts "-- Creating Bookings"
date1 = Date.today
bookings = Array.new(15) do |number|
  date2 = date1 + (3..15).to_a.sample
  users.sample.bookings.create!(start_date: date1 , end_date: date2, flat_id: flats.sample.id)
  date1 = date2+1
end

puts "Seed successful !"
