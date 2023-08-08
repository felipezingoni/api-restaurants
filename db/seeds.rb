user = User.find_or_initialize_by(email: 'felipe@gmail.com')
user.password = 'password'
user.password_confirmation = 'password'

restaurant = user.restaurants.find_or_initialize_by(name: 'Kansas Grill', address: 'Libertador 1289')
restaurant2 = user.restaurants.find_or_initialize_by(name: 'TipoSiete Grill', address: 'Paraguay 1189')
restaurant3 = user.restaurants.find_or_initialize_by(name: 'Chui', address: 'Amenabar 872')

user.save

user2 = User.find_or_initialize_by(email: 'Juan@gmail.com')
user2.password = 'password'
user2.password_confirmation = 'password'
restaurant = user2.restaurants.find_or_initialize_by(name: 'El Naranjo Grill', address: 'Pueyrredon 892')

user2.save
