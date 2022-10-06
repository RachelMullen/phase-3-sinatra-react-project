puts "🌱 Seeding spices..."

# Seed your database here

# Users
User.create(username: "Elliot", password: "Elliot1234")
User.create(username: "Rachel", password: "Rachel1234")
User.create(username: "Luke", password: "Luke1234")
User.create(username: "Cassidy", password: "Cassidy1234")

# Hunts
Hunt.create(title: "Plant Tour of Denver", user_id: User.first.id, public: true)
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

puts "✅ Done seeding!"
