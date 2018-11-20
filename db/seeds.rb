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

lapinou = Toy.new(user: bunny, name: 'lapinou', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 5, category:'creepy')
lapinou.save!

poupi = Toy.new(user: bunny,name: 'poupi', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 5, category:'cuddly')
poupi.save!

beisan = Toy.new(user: bala, name: 'beisan', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 5, category:'creepy')
beisan.save!

conejito = Toy.new(user: bala, name: 'conejito', description: 'blablablabla', location: 'Bunny street 1307 Toylandia', price: 5, category:'educational')
conejito.save!

puts 'Finished!'

