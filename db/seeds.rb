# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Toy.destroy_all
puts 'Creating adorable stuff...'

bala = User.new( email: 'balatheballerina@dogs.com', password: '123456789')
bala.save!

bunny = User.new( email: 'bunnythedoghater@dogs.com', password: '123456789')
bunny.save!

lapinou = Toy.new(user: bunny, name: 'lapinou', description: 'Lapinou is a very cuddly plushtoy. You can snuggle with it all night and rub your nose into its cute little ears', location: 'Bunny street 1307 Toylandia', price: 5, category:'cuddly')
lapinou.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542710715/tqbjt0z5fegfxa4mevmt.jpg'
lapinou.save!

poupi = Toy.new(user: bunny, name: 'poupi', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 9, category:'creepy')
poupi.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542710518/e6n3cpr5iyjchxzt23z4.jpg'
poupi.save!

beisan = Toy.new(user: bala, name: 'beisan', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 3, category:'creepy')
beisan.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542719080/doll.jpg'
beisan.save!

conejito = Toy.new(user: bala, name: 'conejito', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 2, category:'educational')
conejito.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542719181/-.jpg'
conejito.save!

puts 'Finished!'
