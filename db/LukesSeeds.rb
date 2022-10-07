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

Comment.create(body: "The owners of this establishment underpay their workers and overall are dicks... but you didn't hear it from me", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Your Mom's Houses").id)
Comment.create(body: "Upon entering one of the people in my group said 'This place is more like the Denver Fart Museum.' We are no longer on speaking terms", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Denver Art Museum").id)
Comment.create(body: "That cream, that topmilk, PURE VANILLA... That's a 10!", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Comedy Works").id)
Comment.create(body: "Good walks, great talks", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Cheesman Park").id)
Comment.create(body: "Pricy but scrumptious", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Torchy's Tacos").id)
Comment.create(body: "Zoo's be evil me and my homies hate the zoo", user_id: User.find_by(username: "DaddyCham").id, place_id: Place.find_by(name: "Denver Zoo").id)