# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

puts "Seed started !"

puts "-- Generated addresses"
addresses = [
"45 York St, Manchester, Manchester M1 7DE, UK",
"10 Picadilly Pl, Manchester, Manchester M1 2GH, UK",
"79 Newton St, Manchester, Manchester M1 1EX, UK",
"79 Newton St, Manchester, Manchester M1 1EX, UK",
"7-8 Piccadilly Trading Estate, Manchester, Manchester M1 2NP, UK",
"51-53 Richmond St, Manchester, Manchester M1 3WB, UK",
"17-19 Whitworth St W, Manchester, Manchester M1 5WG, UK",
"49 Portland St, Manchester, Manchester M1 3LA, UK",
"11 Oxford Rd, Manchester, Manchester M1, UK",
"Altrincham St, Manchester, Manchester M1, UK",
"B6469, Manchester, Manchester M1, UK",
"10 Stevenson Square, Manchester, Manchester M1 1FB, UK",
"B6469, Manchester, Manchester M1, UK",
"Cavell St, Manchester, Manchester M1, UK",
"79 Phoenix Way, Oxford St, Manchester, Manchester M1 6FQ, UK",
"14 Lever St, Manchester, Manchester M1 1LN, UK",
"6 Faraday St, Manchester, Manchester M1, UK",
"4 Travis St, Manchester, Lancashire M1, UK",
"35 Port St, Manchester, Manchester M1, UK",
"Lena St, Manchester, Manchester M1, UK",
"St James St, Manchester, Manchester M1, UK",
"4 Great Marlborough St, Manchester, Manchester M1, UK",
"36 Back Piccadilly, Manchester, Manchester M1 1HP, UK",
"Rochdale Canal Tow Path, Manchester, Manchester M1, UK",
"151 Oxford Rd, Manchester, Manchester M1, UK",
"1 Portland St, Manchester, Manchester M1 3BE, UK",
"49 Portland St, Manchester, Manchester M1 3LA, UK",
"5 Hart St, Manchester, Manchester M1 3ED, UK",
"43 Store St, Manchester, Manchester M1 2WA, UK",
"2A Lower Chatham St, Manchester, Manchester M1 5TF, UK",
"134 Magdalen St, London SE1 2TU, UK",
"1 Thorburn Square, London SE1 5QH, UK",
"207 Southwark Bridge Rd, London SE1 0DN, UK",
"A3, London SE1 1GA, UK",
"13 Library St, London SE1, UK",
"249 Empire Square W, London SE1 4NL, UK",
"18 Whites Grounds, London SE1 3JY, UK",
"Miller Walk, Lambeth, London SE1, UK",
"22 Dunsterville Way, London SE1 3RQ, UK",
"33C Aquinas St, Lambeth, London SE1 8AD, UK",
"192 Carlisle Ln, Lambeth, London SE1, UK",
"2-4 Bedale St, London SE1 9AL, UK",
"24 Abbey St, London SE1 3NT, UK",
"249 Empire Square W, London SE1 4NL, UK",
"240 Blackfriars Rd, London SE1 8NY, UK",
"20 Park St, London SE1 9EQ, UK",
"1 London Bridge Walk, London SE1 2PF, UK",
"6 Druid St, London SE1 2EU, UK",
"33 Bermondsey St, London SE1, UK",
"5 Mandela Way, London SE1 5GG, UK",
"5 Mandela Way, London SE1 5GG, UK",
"183 Burbage Cl, London SE1, UK",
"156 Bermondsey St, London SE1, UK",
"B240, London SE1, UK",
"326-328 Elephant and Castle, London SE1, UK",
"1-2 Silex St, London SE1 0DW, UK",
"5 Mandela Way, London SE1 5GG, UK",
"13 Greenham Cl, Lambeth, London SE1 7RP, UK",
"5 Mandela Way, London SE1 5GG, UK",
"101-121 Westminster Bridge Rd, Lambeth, London SE1, UK",
"10 First Floor Lee Bank Business Centre, Birmingham, West Midlands B1 1HP, UK",
"Brunswick Arcade, Birmingham, West Midlands B1 2JF, UK",
"26-27 Marshall St, Birmingham, West Midlands B1 1LE, UK",
"33 St Marks St, Birmingham, West Midlands B1 2UH, UK",
"15-17 Regent Pl, Birmingham, West Midlands B1 3NL, UK",
"88 Vittoria St, Birmingham, West Midlands B1 3PA, UK",
"32-34 Smallbrook Queensway, Birmingham, West Midlands B1 1EG, UK",
"10 First Floor Lee Bank Business Centre, Birmingham, West Midlands B1 1HP, UK",
"7-35 Washington St, Birmingham, West Midlands B1, UK",
"57-60 Frederick St, Birmingham, West Midlands B1, UK",
"Beetham Tower, 10 Holloway Circus, Birmingham, West Midlands B1 1BA, UK",
"14 Goodman St, Birmingham, West Midlands B1 2QL, UK",
"New Town Row, Birmingham, West Midlands B6 7UR, UK",
"2-22 Waterfront Walk, Birmingham, West Midlands B1, UK",
"23 Washington Wharf, Birmingham, West Midlands B1 1NN, UK",
"Oozells Way, Birmingham, West Midlands B1, UK",
"33 Paradise Circus Queensway, Birmingham, West Midlands B3, UK",
"31 Gough St, Birmingham, West Midlands B1 1HN, UK",
"1 Oozells St, Birmingham, West Midlands B1 2HS, UK",
"10 First Floor Lee Bank Business Centre, Birmingham, West Midlands B1 1HP, UK",
"1 Brunswick St, Birmingham, West Midlands B1 2JF, UK",
"107 Carver St, Birmingham, West Midlands B1 3AP, UK",
"Nelson St, Birmingham, West Midlands B1 2PD, UK",
"1 Tenby St, Birmingham, West Midlands B1 3EL, UK",
"2-4 Wharfside St, Birmingham, West Midlands B1 1RD, UK",
"New Town Row, Birmingham, West Midlands B6 7UR, UK",
"1 Brunswick St, Birmingham, West Midlands B1 2JF, UK",
"9 Regent St, Birmingham, West Midlands B1 3LZ, UK",
"107 Carver St, Birmingham, West Midlands B1 3AP, UK",
"1 Tenby St, Birmingham, West Midlands B1 3EL, UK",
"74 Kinnear Rd, Glasgow, Glasgow City G40 3JW, UK",
"125 Greenhead St, Glasgow, Glasgow City G40 1HT, UK",
"307 Springfield Rd, Glasgow, Glasgow City G40 3LF, UK",
"50 Walkinshaw St, Glasgow, Glasgow City G40 3PG, UK",
"25 McPhail St, Glasgow, Glasgow City G40 1DN, UK",
"307 Springfield Rd, Glasgow, Glasgow City G40 3LF, UK",
"308 The White Studios, Glasgow, Glasgow City G40 1DA, UK",
"183 Crownpoint Rd, Glasgow, Glasgow City G40 2AL, UK",
"427 Baltic St, Glasgow, Glasgow City G40 3EU, UK",
"2-2 Troon St, Glasgow, Glasgow City G40 3JH, UK",
"2 Monteith Pl, Glasgow, Glasgow City G40 1AX, UK",
"13 Olympia St, Glasgow, Glasgow City G40 3TA, UK",
"Sunnybank St, Glasgow, Glasgow City G40 4QT, UK",
"125 Greenhead St, Glasgow, Glasgow City G40 1HT, UK",
"655 Nuneaton St, Glasgow, Glasgow City G40, UK",
"5 Greenlodge Terrace, Glasgow, Glasgow City G40 1HY, UK",
"10 Dalmarnock Ct, Glasgow, Glasgow City G40 4HL, UK",
"112 Baltic St, Glasgow, Glasgow City G40 3BL, UK",
"30 Claythorn Ave, Glasgow, Glasgow City G40 2HB, UK",
"28 Broad St, Glasgow, Glasgow City G40 2QL, UK",
"12-14 Tullis St, Glasgow, Glasgow City G40 1HN, UK",
"Dornoch St, Glasgow, Glasgow City G40, UK",
"282D London Rd, Glasgow, Glasgow City G40 1PT, UK",
"511 London Rd, Glasgow, Glasgow City G40 2DB, UK",
"5 Chalmers Gate, Glasgow, Glasgow City G40 2AS, UK",
"851 London Rd, Glasgow, Glasgow City G40 3RX, UK",
"14 Fullarton Dr, Glasgow, Glasgow City G32 8FA, UK",
"20 Nuneaton St, Glasgow, Glasgow City G40 3JT, UK",
"226 Moncur St, Glasgow, Glasgow City G40 2SQ, UK",
"415 London Rd, Glasgow, Glasgow City G40 1AG, UK"
]

rand_addresses = addresses.sample(30)

puts "-- Creating Users"
users = Array.new(10) do |number|
  User.create!(name: Faker::Name.name, email: "test#{number+1}@test.com", password: "test"*3, password_confirmation: "test"*3, address: "#{Faker::Address.street_name} #{Faker::Address.city}")
end

puts "-- Creating Flats"
flats = Array.new(30) do |number|
  users.sample.flats.create!(description: "Test #{number+1}",
                             address: rand_addresses[number],
                             price: (50..500).to_a.sample,
                             capacity: (1..6).to_a.sample,
                             bathroom: (1..3).to_a.sample,
                             bedroom: (1..3).to_a.sample,
                             departure_time: (0..24).to_a.sample,
                             tv_wifi: [true, false].sample,
                             washing_machine: [true, false].sample,
                             swimming_pool: [true, false].sample,
                             wheelchair: [true, false].sample,
                             )
end

puts "-- Creating Bookings"
date1 = Date.today
bookings = Array.new(15) do |number|
  date2 = date1 + (3..15).to_a.sample
  users.sample.bookings.create!(start_date: date1 , end_date: date2, flat_id: flats.sample.id)
  date1 = date2+1
end

puts "Seed successful !"
