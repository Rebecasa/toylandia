Message.destroy_all
Booking.destroy_all
Toy.destroy_all
User.destroy_all
Review.destroy_all

puts 'Creating adorable stuff...'

# Users
bala = User.new( email: 'balatheballerina@dogs.com', password: '123456789', username: "Bala")
bala.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542899427/ad893707-7999-4e6e-96ac-6ad81fa95327.jpg'
bala.save!

bunny = User.new( email: 'bunnythedoghater@dogs.com', password: '123456789', username: "Bunny")
bunny.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542900942/img_avatar2.png'
bunny.save!

jadwiga = User.new( email: 'jadwiga@coumert.com', password: 'jadwiga', username: "Jadwiga")
jadwiga.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542901161/download.png'
jadwiga.save!

# Toys
beisan = Toy.new(user: bala, name: 'beisan', description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', location: 'Tunis', price: 3, category:'creepy')
beisan.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542719080/doll.jpg'
beisan.save!

wizard = Toy.new(user: bunny, name: 'Wizard', description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', location: 'Warsaw', price: 5, category:'cuddly')
wizard.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542710518/e6n3cpr5iyjchxzt23z4.jpg'
wizard.save!

conejito = Toy.new(user: bala, name: 'conejito', description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', location: 'Madrid', price: 2, category:'educational')
conejito.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542719181/-.jpg'
conejito.save!

sloncek = Toy.new(user: jadwiga, name: 'slonček jakonček', description: "This is the best elephant in the world. It is cute as an elephant but it doesn't stink as one and it doesn't require all the feeding of an actual animal.", location: 'Ljubljana', price: 8.50, category:'cuddly')
sloncek.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542977401/elephant.jpg'
sloncek.save!

hulk = Toy.new(user: bunny, name: 'hulk', description: 'Sometimes hulk get angry. In that case, just get away from it. But most of the time, he is a gentle giant.', location: 'Paris', price: 15, category:'educational')
hulk.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1542623024-a797a755b8d0.jpg'
hulk.save!

monkey = Toy.new(user: bala, name: 'maurice', description: 'Maurice is often sad but give it a snuggle and it will warm up your heart. Monkeys are very nice creatures, especially when they are plushtoys.', location: 'Barcelona', price: 7, category:'cuddly')
monkey.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1517686748843-bb360cfc62b3.jpg'
monkey.save!

smallfoot = Toy.new(user: bunny, name: 'small foot', description: 'Dinosaurs are the most affectionate animals out there! Too bad they don\'t exist anymore', location: 'Zurich', price: 17, category:'educational')
smallfoot.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1517922522248-f8ae08b6b390.jpg'
smallfoot.save!

carz = Toy.new(user: bunny, name: 'Caroto', description: 'Vroom vroom vroom vroom vroom vroom vroom vroom vroom vroom', location: 'Hamburg', price: 17, category:'educational')
carz.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1508896694512-1eade558679c.jpg'
carz.save!

lapinou = Toy.new(user: bunny, name: 'lapinou', description: 'Lapinou is a very cuddly plushtoy. You can snuggle with it all night and rub your nose into its cute little ears', location: 'Munich', price: 5, category:'cuddly')
lapinou.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542977401/lapinou.jpg'
lapinou.save!

poupi = Toy.new(user: bunny, name: 'poupi', description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', location: 'Berlin', price: 9, category:'cars')
poupi.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542710715/tqbjt0z5fegfxa4mevmt.jpg'
poupi.save!

cuteteddy = Toy.new(user: jadwiga, name: 'Cuty', description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', location: 'Barcelona', price: 7, category:'cuddly')
cuteteddy.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542977401/teddybear.jpg'
cuteteddy.save!

balastoy = Toy.new(user: bala, name: 'Dog Toy', description: 'This is the perfect toy for dogs. When they chew on it, it makes Squeek sqeek. I myself am a dog and I just love it.', location: 'Berlin', price: 5, category:'other')
balastoy.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542977402/IMG_20181123_133530.jpg'
balastoy.save!

chucky = Toy.new(user: jadwiga, name: 'chucky', description: 'Chucky is an adorable doll. At night, it likes to glimb in your bed and look at you while you sleep.', location: 'Angoulême', price: 15, category:'creepy')
chucky.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542794703/photo-1510130113467-e63a1970b95c.jpg'
chucky.save!

stormtrooper = Toy.new(user: jadwiga, name: 'StromTrooper lovers', description: 'Being a StromTrooper is not easy. The Empire is not kind to its employee. But these two soldiers have escaped from their duties to live happily ever after on a planet far far away', location: 'Berlin', price: 4, category:'educational')
stormtrooper.remote_photo_url = 'https://res.cloudinary.com/blueolive/image/upload/v1542977400/stormtrooper.jpg'
stormtrooper.save!

# Bookings
booking = Booking.new(user: bala, toy: lapinou, start_date: DateTime.now, end_date: DateTime.tomorrow)
booking.save!

booking2 = Booking.new(user: bunny, toy: beisan, start_date: DateTime.now, end_date: DateTime.tomorrow)
booking2.save!

# Reviews
review = Review.new(content: 'This scared the shit out of me', rating: 1, toy: chucky)
review.save!
review2 = Review.new(content: "It's alive!!!!!!!!!!!!!!!!", rating: 1, toy: chucky)
review2.save!
review3 = Review.new(content: "AAaaaaaaaaaaaaaAAAAAAAAAAAAaaaaaaaaaaaaa", rating: 1, toy: chucky)
review3.save!
review4 = Review.new(content: '666', rating: 5, toy: chucky)

review4.save!
puts 'Finished!'
