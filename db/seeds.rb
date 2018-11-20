# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Toy.destroy_all
User.destroy_all
puts 'Creating adorable stuff...'

bala = User.new( email: 'balatheballerina@dogs.com', password: '123456789')
bala.save!

bunny = User.new( email: 'bunnythedoghater@dogs.com', password: '123456789')
bunny.save!

beisan = Toy.new(user: bala, name: 'beisan', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 5, category:'creepy')
beisan.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542719080/doll.jpg'
beisan.save!

lapinou = Toy.new(user: bunny, name: 'lapinou', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 5, category:'creepy')
lapinou.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542710715/tqbjt0z5fegfxa4mevmt.jpg'
lapinou.save!

booking = Booking.new(user: bala, toy: lapinou, start_date: DateTime.now, end_date: DateTime.tomorrow)
booking.save!
booking2 = Booking.new(user: bunny, toy: beisan, start_date: DateTime.now, end_date: DateTime.tomorrow)
booking2.save!

# booking.user = bala
# test_booking.toy = beisan


poupi = Toy.new(user: bunny, name: 'poupi', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 5, category:'cuddly')
poupi.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542710518/e6n3cpr5iyjchxzt23z4.jpg'
poupi.save!


conejito = Toy.new(user: bala, name: 'conejito', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 5, category:'educational')
conejito.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542719181/-.jpg'
conejito.save!



puts 'Finished!'
