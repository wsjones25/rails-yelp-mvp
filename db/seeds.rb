# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '07817627745',
    category:       'japanese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '07817627746',
    category:       'italian'
  },
  {
    name:         'la poulet',
    address:      '134 Kilburn High Road, London, NW7 6HG',
    phone_number:  '07817627747',
    category:       'french'
  },
  {
    name:         'Chef Peking',
    address:      '7 Station Road, Harpenden, AL5 2EG',
    phone_number:  '07817627748',
    category:       'chinese'
  },
  {
    name:         'Le chien',
    address:      '7 Valley Road, Streatham, SW16 2AF',
    phone_number:  '07817627749',
    category:       'belgian'
  }

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
