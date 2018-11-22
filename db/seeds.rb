Booking.destroy_all
Toy.destroy_all
User.destroy_all

puts 'Creating adorable stuff...'

# Users
bala = User.new( email: 'balatheballerina@dogs.com', password: '123456789')
bala.save!

bunny = User.new( email: 'bunnythedoghater@dogs.com', password: '123456789')
bunny.save!

bugsbunny = User.new( email: 'bugsbunny@rabbits.com', password: '123456789')
bugsbunny.save!

# Toys
lapinou = Toy.new(user: bunny, name: 'lapinou', description: 'Lapinou is a very cuddly plushtoy. You can snuggle with it all night and rub your nose into its cute little ears', location: 'Munich', price: 5, category:'cuddly')
lapinou.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542710715/tqbjt0z5fegfxa4mevmt.jpg'
lapinou.save!

poupi = Toy.new(user: bunny, name: 'poupi', description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', location: 'Berlin', price: 9, category:'cars')
poupi.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542710518/e6n3cpr5iyjchxzt23z4.jpg'
poupi.save!

beisan = Toy.new(user: bala, name: 'beisan', description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', location: 'Tunis', price: 3, category:'creepy')
beisan.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542719080/doll.jpg'
beisan.save!

poupi = Toy.new(user: bunny, name: 'poupi', description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', location: 'Warsaw', price: 5, category:'cuddly')
poupi.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542710518/e6n3cpr5iyjchxzt23z4.jpg'
poupi.save!

conejito = Toy.new(user: bala, name: 'conejito', description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', location: 'Madrid', price: 2, category:'educational')
conejito.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542719181/-.jpg'
conejito.save!

chucky = Toy.new(user: bugsbunny, name: 'chucky', description: 'Chucky is an adorable doll. At night, it likes to glimb in your bed and look at you while you sleep.', location: 'Angoulême', price: 15, category:'creepy')
chucky.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1510130113467-e63a1970b95c.jpg'
chucky.save!

sloncek = Toy.new(user: bugsbunny, name: 'slonček jakonček', description: 'Vroom vroom vroom vroom vroom vroom vroom vroom vroom.', location: 'Ljubljana', price: 8.50, category:'cars')
sloncek.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1508896694512-1eade558679c.jpg'
sloncek.save!

hulk = Toy.new(user: bunny, name: 'hulk', description: 'Sometimes hulk get angry. In that case, just get away from it. But most of the time, he is a gentle giant.', location: 'Paris', price: 15, category:'educational')
hulk.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1542623024-a797a755b8d0.jpg'
hulk.save!

monkey = Toy.new(user: bala, name: 'maurice', description: 'Maurice is often sad but give it a snuggle and it will warm up your heart.', location: 'Barcelona', price: 7, category:'cuddly')
monkey.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1517686748843-bb360cfc62b3.jpg'
monkey.save!

smallfoot = Toy.new(user: bunny, name: 'small foot', description: 'Dinosaurs are the most affectionate animals out there! Too bad they don\'t exist anymore', location: 'Zurich', price: 17, category:'educational')
smallfoot.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1517922522248-f8ae08b6b390.jpg'
smallfoot.save!

# Bookings
booking = Booking.new(user: bala, toy: lapinou, start_date: DateTime.now, end_date: DateTime.tomorrow)
booking.save!

booking2 = Booking.new(user: bunny, toy: beisan, start_date: DateTime.now, end_date: DateTime.tomorrow)
booking2.save!

puts 'Finished!'
