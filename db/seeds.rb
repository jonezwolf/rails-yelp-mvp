# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants = Restaurant.create([
  { name: 'Luke', phone_number: '01 03 04 05 06 07', address: '70 Dorcas St', category: 'chinese' },
  { name: 'Marshall', phone_number: '11 22 33 44 55', address: '80 Canal St', category: 'italian' },
  { name: 'Giulias', phone_number: '99 88 77 66 55', address: '555 Swanston St', category: 'japanese' },
  { name: 'Mikes', phone_number: '55 44 33 22 11', address: ' 14 Stewart St', category: 'french' },
  { name: 'Mirinda', phone_number: '99 11 88 22 33', address: '3 King St', category: 'belgian' }
])
