# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone:        346467382,
    category:      'indian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone:        298076543,
    category:     'italian'
  },
  {
    name:         'Blue Frog',
    address:      'Taiguli F1 16E, Chengdu',
    phone:        298076543,
    category:     'american'
  },
  {
    name:         'Mountain East',
    address:      '34M Mountain Road, Hangzhou',
    phone:        368777777,
    category:     'french'
  },
  {
    name:         'Fancy Inn',
    address:      '56 Itoyocato St, Kyoto',
    phone:        298076543,
    category:     'japaness'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'