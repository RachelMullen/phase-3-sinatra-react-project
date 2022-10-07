puts "🌱 Seeding spices..."

# Seed your database here

# Users
User.create(username: "Elliot", bio: "I am a tub of hummus", locale: "Denver", password: "Elliot1234")
User.create(username: "Rachel", bio: "Rachel's bio", locale: "Denver", password: "Rachel1234")
User.create(username: "Luke", bio: "Luke's bio", locale: "Denver", password: "Luke1234")
User.create(username: "Cassidy", bio: "Cass bio", locale: "Denver", password: "Cassidy1234")

# Hunts
Hunt.create(title: "Plant Tour of Denver", user_id: User.find_by(username: "Elliot"), public: true)
Hunt.create(title: "Museums of Denver", user_id: User.second.id, public: true)
Hunt.create(title: "Parks of Denver", user_id: User.third.id, public: true)
Hunt.create(title: "Dance Studios of Denver", user_id: User.fourth.id, public: true)

# Places by Hunt
Place.create(name: "Denver Botanical Gardens", description: "this is a place", latitude: 39.73310584820331, longitude: -104.96037223902049)
Place.create(name: "Regis University Arboretum", description: "this is a place", latitude: 39.791315175389094, longitude: -105.03375557476444)
Place.create(name: "Baker Gardens", description: "this is a place", latitude: 39.72314725868774, longitude: -104.9923710480569)

Place.create(name: "Denver Selfie Museum", description: "this is a place", latitude: 0, longitude: 0)
Place.create(name: "Meow Wolf Denver", description: "this is a place", latitude: 0, longitude: 0)
Place.create(name: "Denver Art Museum", description: "this is a place", latitude: 0, longitude: 0)

Place.create(name: "Denver Park", description: "this is a place", latitude: 0, longitude: 0)
Place.create(name: "Cheesman Park", description: "this is a place", latitude: 0, longitude: 0)
Place.create(name: "Confluence Park", description: "this is a place", latitude: 0, longitude: 0)

Place.create(name: "Colorado New Style Dance Center", description: "this is a place", latitude: 0, longitude: 0)
Place.create(name: "Evergreen School of Ballet - Le Petit", description: "this is a place", latitude: 0, longitude: 0)
Place.create(name: "Denver Dance Center", description: "this is a place", latitude: 0, longitude: 0)

# Comments
Comment.create(body: "I love this place! From Elliot", user_id: User.first.id, place_id: Place.find_by(name: "Denver Botanical Gardens").id)
Comment.create(body: "I love this place! From Rachel", user_id: User.second.id, place_id: Place.find_by(name: "Denver Selfie Museum").id)
Comment.create(body: "I love this place! From Luke", user_id: User.third.id, place_id: Place.find_by(name: "Denver Park").id)
Comment.create(body: "I love this place! From Cassidy", user_id: User.fourth.id, place_id: Place.find_by(name: "Colorado New Style Dance Center").id)

# Visits by Hunt & User
# 1
Visit.create(
    user_id: User.first.id,
    place_id: Place.find_by(name: "Regis University Arboretum").id,
    hunt_id: Hunt.find_by(title: "Plant Tour of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)
Visit.create(
    user_id: User.first.id,
    place_id: Place.find_by(name: "Denver Botanical Gardens").id,
    hunt_id: Hunt.find_by(title: "Plant Tour of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)
Visit.create(
    user_id: User.first.id,
    place_id: Place.find_by(name: "Baker Gardens").id,
    hunt_id: Hunt.find_by(title: "Plant Tour of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)

# 2
Visit.create(
    user_id: User.second.id,
    place_id: Place.find_by(name: "Denver Selfie Museum").id,
    hunt_id: Hunt.find_by(title: "Museums of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)
Visit.create(
    user_id: User.second.id,
    place_id: Place.find_by(name: "Meow Wolf Denver").id,
    hunt_id: Hunt.find_by(title: "Museums of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)
Visit.create(
    user_id: User.second.id,
    place_id: Place.find_by(name: "Denver Art Museum").id,
    hunt_id: Hunt.find_by(title: "Museums of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)

# 3
Visit.create(
    user_id: User.third.id,
    place_id: Place.find_by(name: "Denver Park").id,
    hunt_id: Hunt.find_by(title: "Parks of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)
Visit.create(
    user_id: User.third.id,
    place_id: Place.find_by(name: "Cheesman Park").id,
    hunt_id: Hunt.find_by(title: "Parks of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)
Visit.create(
    user_id: User.third.id,
    place_id: Place.find_by(name: "Confluence Park").id,
    hunt_id: Hunt.find_by(title: "Parks of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)

# 4
Visit.create(
    user_id: User.fourth.id,
    place_id: Place.find_by(name: "Colorado New Style Dance Center").id,
    hunt_id: Hunt.find_by(title: "Dance Studios of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)
Visit.create(
    user_id: User.fourth.id,
    place_id: Place.find_by(name: "Evergreen School of Ballet - Le Petit").id,
    hunt_id: Hunt.find_by(title: "Dance Studios of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)
Visit.create(
    user_id: User.fourth.id,
    place_id: Place.find_by(name: "Denver Dance Center").id,
    hunt_id: Hunt.find_by(title: "Dance Studios of Denver").id,
    complete: false,
    wishlist: rand(2) == 1 ? true : false,
    favorite: rand(2) == 1 ? true : false,
    avoid: rand(2) == 1 ? true : false,
)

# daddy cham is killin shit

User.create(username: "DaddyCham", bio: "Come to Papa", locale: "Around the Way", password: "123")

Hunt.create(title: "Da spots fo da Homies, naw mean?", user_id: User.find_by(username: "DaddyCham"), public: true)
Hunt.create(title: "Da spots fo da Ladies, naw mean?", user_id: User.find_by(username: "DaddyCham"), public: true)


Place.create(name: "Comedy Works", description: "This is a Place where you haha till the pain goes away", latitude: 39.74949862441033, longitude: -104.9981269398525)
Place.create(name: "Your Mom's House", description: "This is a Place where you drink and dance till the pain goes away", latitude: 39.73689738657679, longitude: -104.97955741734198)
Place.create(name: "Denver Art Museum", description: "This is a Place where you look at beautiful things till the pain goes away", latitude: 39.73733628490052, longitude: -104.98934510199553)
Place.create(name: "Cheesman Park", description: "This is a Place where you bask in the sun till the pain goes away", latitude: 39.732597382242105, longitude: -104.96602469245353)
Place.create(name: "Torchy's Tacos", description: "This is a Place where you eat overpriced tacos till the pain goes away", latitude: 39.73616166211513, longitude: -104.9878256884574)
Place.create(name: "Denver Zoo", description: "This is a Place where you look at animals till the pain goes away", latitude: 39.75065429151986, longitude: -104.94893848994114)

Visit.create(
    user_id: User.find_by(username: "DaddyCham"),
    place_id: Place.find_by(name: "Comedy Works").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: true,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham"),
    place_id: Place.find_by(name: "Your Mom's House").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: false,
    avoid: true,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham"),
    place_id: Place.find_by(name: "Denver Art Museum").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham"),
    place_id: Place.find_by(name: "Torchy's Tacos").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham"),
    place_id: Place.find_by(name: "Denver Zoo").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: false,
    avoid: true,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham"),
    place_id: Place.find_by(name: "Comedy Works").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Ladies, naw mean?").id,
    complete: false,
    wishlist: true,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham"),
    place_id: Place.find_by(name: "Cheesman Park").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Ladies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham"),
    place_id: Place.find_by(name: "Denver Art Museum").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Ladies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)

Comment.create(body: "The owners of this establishment underpay their workers and overall are dicks... but you didn't hear it from me", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Your Mom's House").id)
Comment.create(body: "Upon entering one of the people in my group said 'This place is more like the Denver Fart Museum.' We are no longer on speaking terms", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Denver Art Museum").id)
Comment.create(body: "That cream, that topmilk, PURE VANILLA... That's a 10!", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Comedy Works").id)
Comment.create(body: "Good walks, great talks", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Cheesman Park").id)
Comment.create(body: "Pricy but scrumptious", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Torchy's Tacos").id)
Comment.create(body: "Zoo's be evil me and my homies hate the zoo", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Denver Zoo").id)

puts "✅ Done seeding!"
