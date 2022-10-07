puts "🌱 Seeding spices..."

# Seed your database here

puts "seeding our  developer nodes"

puts "Daddy Cham is killin shit (luke so i can ctrl f it)"

User.create(username: "DaddyCham", bio: "Come to Papa", locale: "Around the Way", password: "123")

Hunt.create(title: "Da spots fo da Homies, naw mean?", locale: "Denver", user_id: User.find_by(username: "DaddyCham").id, public: true)
Hunt.create(title: "Da spots fo da Ladies, naw mean?", locale: "Denver", user_id: User.find_by(username: "DaddyCham").id, public: true)


Place.create(name: "Comedy Works", description: "This is a Place where you haha till the pain goes away", latitude: 39.74949862441033, longitude: -104.9981269398525)
Place.create(name: "Your Mom's House", description: "This is a Place where you drink and dance till the pain goes away", latitude: 39.73689738657679, longitude: -104.97955741734198)
Place.create(name: "Denver Art Museum", description: "This is a Place where you look at beautiful things till the pain goes away", latitude: 39.73733628490052, longitude: -104.98934510199553)
Place.create(name: "Cheesman Park", description: "This is a Place where you bask in the sun till the pain goes away", latitude: 39.732597382242105, longitude: -104.96602469245353)
Place.create(name: "Torchy's Tacos", description: "This is a Place where you eat overpriced tacos till the pain goes away", latitude: 39.73616166211513, longitude: -104.9878256884574)
Place.create(name: "Denver Zoo", description: "This is a Place where you look at animals till the pain goes away", latitude: 39.75065429151986, longitude: -104.94893848994114)

Visit.create(
    user_id: User.find_by(username: "DaddyCham").id,
    place_id: Place.find_by(name: "Comedy Works").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: true,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham").id,
    place_id: Place.find_by(name: "Your Mom's House").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: false,
    avoid: true,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham").id,
    place_id: Place.find_by(name: "Denver Art Museum").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham").id,
    place_id: Place.find_by(name: "Torchy's Tacos").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham").id,
    place_id: Place.find_by(name: "Denver Zoo").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Homies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: false,
    avoid: true,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham").id,
    place_id: Place.find_by(name: "Comedy Works").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Ladies, naw mean?").id,
    complete: false,
    wishlist: true,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham").id,
    place_id: Place.find_by(name: "Cheesman Park").id,
    hunt_id: Hunt.find_by(title: "Da spots fo da Ladies, naw mean?").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "DaddyCham").id,
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

puts "Rachel is seeding!"

User.create(username: "Mullet", bio: "Popcorn is ah acceptable snack and dinner.", locale: "Barnum, Denver", password: "123")

Hunt.create(title: "Dive Bars", locale: "Denver", user_id: User.find_by(username: "Mullet").id, public: true)
Hunt.create(title: "Nerd Stuff", locale: "Denver", user_id: User.find_by(username: "Mullet").id, public: true)


Place.create(name: "Don's Club Tavern", description: "Unassuming veteran with vinyl booths & wood paneling featuring cocktails, pool & an outdoor patio.", latitude: 39.72594870943603, longitude: -104.97816344433357)
Place.create(name: "Candlelight Tavern", description: "A dark, chill tradition for booze bargains, burgers, sports on TV & games from pool to shuffleboard.", latitude: 39.710226257311305, longitude: -104.98042022268027)
Place.create(name: "Lakeview Lounge", description: "Vintage, cash-only dive bar offering pool & foosball tables & a patio overlooking Sloan's Lake.", latitude: 39.75103821469635, longitude: -105.05363051549632)
Place.create(name: "Viking", description: "Biker bar on West Colfax.", latitude: 39.74091602393617, longitude: -105.04958577517503)
Place.create(name: "Wings Over the Rockies Air & Space Museum", description: "Wartime aircraft, WWII uniform collection & aviation art on the former site of Lowry Air Force Base.", latitude: 39.72096494977194, longitude: -104.89550750200648)
Place.create(name: "Denver Public Library: Central Library", description: "Take a look, it's in a book!", latitude: 39.742172513731724, longitude: -104.9860303515646)
Place.create(name: "History Colorado Center", description: "Interactive museum showcasing state-history exhibits, lectures & more in an eco-friendly building.", latitude: 39.73740196872607, longitude: -104.9881886330873)
Place.create(name: "Denver Museum of Nature & Science", description: "Take a look, it's in a book!", latitude: 39.74768281167681, longitude: -104.94289363269709)

Visit.create(
    user_id: User.find_by(username: "Mullet").id,
    place_id: Place.find_by(name: "Don's Club Tavern").id,
    hunt_id: Hunt.find_by(title: "Dive Bars").id,
    complete: false,
    wishlist: true,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Mullet").id,
    place_id: Place.find_by(name: "Candlelight Tavern").id,
    hunt_id: Hunt.find_by(title: "Dive Bars").id,
    complete: false,
    wishlist: false,
    favorite: false,
    avoid: true,
)
Visit.create(
    user_id: User.find_by(username: "Mullet").id,
    place_id: Place.find_by(name: "Lakeview Lounge").id,
    hunt_id: Hunt.find_by(title: "Dive Bars").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Mullet").id,
    place_id: Place.find_by(name: "Viking").id,
    hunt_id: Hunt.find_by(title: "Dive Bars").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Mullet").id,
    place_id: Place.find_by(name: "Denver Public Library: Central Library").id,
    hunt_id: Hunt.find_by(title: "Nerd Stuff").id,
    complete: false,
    wishlist: false,
    favorite: false,
    avoid: true,
)
Visit.create(
    user_id: User.find_by(username: "Mullet").id,
    place_id: Place.find_by(name: "History Colorado Center").id,
    hunt_id: Hunt.find_by(title: "Nerd Stuff").id,
    complete: false,
    wishlist: true,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Mullet").id,
    place_id: Place.find_by(name: "Wings Over the Rockies Air & Space Museum").id,
    hunt_id: Hunt.find_by(title: "Nerd Stuff").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Mullet").id,
    place_id: Place.find_by(name: "Denver Museum of Nature & Science").id,
    hunt_id: Hunt.find_by(title: "Nerd Stuff").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)

Comment.create(body: "You will absolutely leave with stories from this place.", user_id: User.find_by(username: "Mullet").id, place_id: Place.find_by(name: "Candlelight Tavern").id)
Comment.create(body: "This place has a table from the G8 summit in the 1990s!", user_id: User.find_by(username: "Mullet").id, place_id: Place.find_by(name: "Denver Public Library: Central Library").id)
Comment.create(body: "Who doesn't love NASA? Check it out!", user_id: User.find_by(username: "Mullet").id, place_id: Place.find_by(name: "Wings Over the Rockies Air & Space Museum").id)
Comment.create(body: "They just don't make bars like this anymore, you know?", user_id: User.find_by(username: "Mullet").id, place_id: Place.find_by(name: "Lakeview Lounge").id)
Comment.create(body: "It's not for me, but locals love it.", user_id: User.find_by(username: "Mullet").id, place_id: Place.find_by(name: "Viking").id)
Comment.create(body: "This is an amazing step into Colorado's past, present, and future!", user_id: User.find_by(username: "Mullet").id, place_id: Place.find_by(name: "History Colorado Center").id)

puts "cass time yall"

User.create(username: "Cass", bio: "Just a free, fun gal!", locale: "Cap Hill, Denver", password: "1234")

Hunt.create(title: "Art Circles and Vibes", locale: "Denver", user_id: User.find_by(username: "Cass").id, public: true)


Place.create(name: "Habitat Gallery", description: "Georgia Amar is a legend everyone should meet her.", latitude: 39.729545, longitude: -104.998461)
Place.create(name: "Mercury Cafe", description: "Get acquianted with a tiger at this hopin' spot for coffee, tea, and noms PLUS live music, slam poetry, and open dance classes for all levels.", latitude: 39.751046, longitude: -104.985383)
Place.create(name: "La Rumba", description: "Novice and professional Salsa dancers alike come together to move their bums and their feet.", latitude: 39.730547, longitude: -104.988843) 
Place.create(name: "Milk Bar", description: "Not to be confused with Milk Market! Huge dance hall, meets cool-weird Denver. Many different rooms, each with their own genre of dance tunes. Truly a come one come all experience.", latitude: 39.733084, longitude: -104.988102)
Place.create(name: "Moovment House", description: "Affordable, welcoming movement classes centered on reciprocity and movement for every body.", latitude: 39.725579, longitude: -104.949096)
Place.create(name: "Clifford Still Museum", description: "Potent and expansive museum, nestled right next to the Museum of Contemporay Art, profiling a single artist's enitre body of work.", latitude: 39.736830, longitude: -104.989946)
Place.create(name: "Santa Fe Arts District", description: "Visit Especially for the first friday of every month to enjoy exclusive and special free exhibits, as well as food trucks, drinks, and more! Highly recommend.", latitude: 39.729932, longitude: -104.998546)
Place.create(name: "The Mayan Theater", description: "Classic movie theater on Broadway, typically showing more exclusive films alongside popular ones. I mean popcorn too... you can't go wrong!", latitude: 39.718483, longitude: -104.987386)

Visit.create(
    user_id: User.find_by(username: "Cass").id,
    place_id: Place.find_by(name: "Habitat Gallery").id,
    hunt_id: Hunt.find_by(title: "Art Circles and Vibes").id,
    complete: false,
    wishlist: true,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Cass").id,
    place_id: Place.find_by(name: "Mercury Cafe").id,
    hunt_id: Hunt.find_by(title: "Art Circles and Vibes").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Cass").id,
    place_id: Place.find_by(name: "La Rumba").id,
    hunt_id: Hunt.find_by(title: "Art Circles and Vibes").id,
    complete: true,
    wishlist: false,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Cass").id,
    place_id: Place.find_by(name: "Milk Bar").id,
    hunt_id: Hunt.find_by(title: "Art Circles and Vibes").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Cass").id,
    place_id: Place.find_by(name: "Moovment House").id,
    hunt_id: Hunt.find_by(title: "Art Circles and Vibes").id,
    complete: false,
    wishlist: false,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Cass").id,
    place_id: Place.find_by(name: "Clifford Still Museum").id,
    hunt_id: Hunt.find_by(title: "Art Circles and Vibes").id,
    complete: false,
    wishlist: true,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Cass").id,
    place_id: Place.find_by(name: "Santa Fe Arts District").id,
    hunt_id: Hunt.find_by(title: "Art Circles and Vibes").id,
    complete: false,
    wishlist: true,
    favorite: false,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "Cass").id,
    place_id: Place.find_by(name: "The Mayan Theater").id,
    hunt_id: Hunt.find_by(title: "Art Circles and Vibes").id,
    complete: false,
    wishlist: false,
    favorite: true,
    avoid: false,
)

Comment.create(body: "Can't wait to go back. Pro tip, bring popsicles!", user_id: User.find_by(username: "Cass").id, place_id: Place.find_by(name: "Habitat Gallery").id)
Comment.create(body: "Good for any occasion honestly.", user_id: User.find_by(username: "Cass").id, place_id: Place.find_by(name: "Mercury Cafe").id)
Comment.create(body: "What a release!", user_id: User.find_by(username: "Cass").id, place_id: Place.find_by(name: "Milk Bar").id)
Comment.create(body: "I especially liked the Gaga class, i think her name was Cassidy. So good!", user_id: User.find_by(username: "Cass").id, place_id: Place.find_by(name: "Moovment House").id)
Comment.create(body: "Watched Marcell the Shell here and I think I cried three times. Touching.", user_id: User.find_by(username: "Cass").id, place_id: Place.find_by(name: "The Mayan Theater").id)

puts "big sis seeding"

User.create(username: "bigsis", bio: "giving everything my all", locale: "Tokyo/NY", password: "1234")

Hunt.create(title: "Tokyo for Big Sister", locale: "Tokyo", user_id: User.find_by(username: "bigsis").id, public: true)

Place.create(name: "WOMB", description: "Tri-level club in the heart of Shibuya, featuring a balanced roster of state-of-the-art eclectic and popular electronic acts.", latitude: 35.658606442274305, longitude: 139.69495582699568)
Place.create(name: "Circus", description: "Mid-tier club in terms of built-in crowd and diversity of acts. Unsung hero.", latitude: 35.65430946353367, longitude: 139.70566482884476)
Place.create(name: "AGEHA", description: "The largest night club in Japan, recently closed, shout out Tae, Noah, Yota, Ekali, Baauer, and the AGEHA butterfly forever. RIP.", latitude: 35.64242737935928, longitude: 139.8248001098037)
Place.create(name: "Sound Museum Vision", description: "I played my first over-seas show here on White stage, and another with some of the most lovely human beings I've known.", latitude: 35.65832731954984, longitude: 139.69680414233824)
Place.create(name: "Nakameguro Lounge", description: "Coffee shop located 30 seconds from the train featuring a mellow atmosphere and cozy beverages.", latitude: 35.643044248148044, longitude: 139.69717538007754)
Place.create(name: "英会話シェアハウス", description: "First place I lived in Tokyo.", latitude: 35.61845530450259, longitude: 139.523109455393)
Place.create(name: "Takaido Station", description: "Second place I lived in Tokyo.", latitude: 35.68342835627, longitude: 139.6152812288455)
Place.create(name: "Yomiuriland (読売ランド前駅 - Yomiurilando-mae)", description: "Very close to the first place I lived, an amusement park with a cool illumination around the holidays. Shout out Miki.", latitude: 35.62528913544555, longitude: 139.51756769931205)
Place.create(name: "Terrace Hatagaya", description: "Third place I lived in this grogeous city.", latitude: 35.68314080705679, longitude: 139.6765559530985)
Place.create(name: "Ueno Station", description: "Close to the best food in Tokyo ;)", latitude: 35.71468986803839, longitude: 139.7773661839696)
Place.create(name: "Arenmoku", description: "Best food in Tokyo HANDS DOWN.", latitude: 35.904465358675836, longitude: 139.8274220622168)
Place.create(name: "DJ BAR Bridge", description: "Very cool listening bar tucked into an alley in Shibuya.", latitude: 35.66009237715224, longitude: 139.70163706745106)

Comment.create(body: "I saw Friction here for the first time before I started writing dnb!", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "WOMB").id)
Comment.create(body: "Sako of Beginning took incredible care of me here and I saw ShockOne with Haruka.", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "Circus").id)
Comment.create(body: "Glad I got to go here before it shut down permanently. I met Baauer here and saw my friends get the recognition they deserve.", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "AGEHA").id)
Comment.create(body: "ARANKU 5-ever.", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "Sound Museum Vision").id)
Comment.create(body: "Wrote music with Austin here, he's always making me listen to Steve Lacey lol. Aust can write music like a motherfucker and he gave me books to read to.", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "Nakameguro Lounge").id)
Comment.create(body: "I showed up at 1am and they welcomed me in.", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "英会話シェアハウス").id)
Comment.create(body: "I showed up on the sidewalk with a suitcase and then went out for drinks with the person showing me the apartment.", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "Takaido Station").id)
Comment.create(body: "Peaceful.", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "Yomiuriland (読売ランド前駅 - Yomiurilando-mae)").id)
Comment.create(body: "Stress here-- small room, incredible views from the roof.", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "Terrace Hatagaya").id)
Comment.create(body: "Seriously-- best food in Tokyo proper.", user_id: User.find_by(username: "bigsis").id, place_id: Place.find_by(name: "Arenmoku").id)

Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "WOMB").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "Circus").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "AGEHA").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "Sound Museum Vision").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "Nakameguro Lounge").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "英会話シェアハウス").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "Takaido Station").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "Yomiuriland (読売ランド前駅 - Yomiurilando-mae)").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "Terrace Hatagaya").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "Ueno Station").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "Arenmoku").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)
Visit.create(
    user_id: User.find_by(username: "bigsis").id,
    place_id: Place.find_by(name: "DJ BAR Bridge").id,
    hunt_id: Hunt.find_by(title: "Tokyo for Big Sister").id,
    complete: true,
    wishlist: false,
    favorite: true,
    avoid: false,
)




puts "✅ Done seeding!"



# DEVELOPMENT SEEDS BELOW

# # Users
# User.create(username: "Elliot", bio: "I am a tub of hummus", locale: "Denver", password: "Elliot1234")
# User.create(username: "Rachel", bio: "Rachel's bio", locale: "Denver", password: "Rachel1234")
# User.create(username: "Luke", bio: "Luke's bio", locale: "Denver", password: "Luke1234")
# User.create(username: "Cassidy", bio: "Cass bio", locale: "Denver", password: "Cassidy1234")

# # Hunts
# Hunt.create(title: "Plant Tour of Denver", user_id: User.find_by(username: "Elliot"), public: true)
# Hunt.create(title: "Museums of Denver", user_id: User.second.id, public: true)
# Hunt.create(title: "Parks of Denver", user_id: User.third.id, public: true)
# Hunt.create(title: "Dance Studios of Denver", user_id: User.fourth.id, public: true)

# # Places by Hunt
# Place.create(name: "Denver Botanical Gardens", description: "this is a place", latitude: 39.73310584820331, longitude: -104.96037223902049)
# Place.create(name: "Regis University Arboretum", description: "this is a place", latitude: 39.791315175389094, longitude: -105.03375557476444)
# Place.create(name: "Baker Gardens", description: "this is a place", latitude: 39.72314725868774, longitude: -104.9923710480569)

# Place.create(name: "Denver Selfie Museum", description: "this is a place", latitude: 0, longitude: 0)
# Place.create(name: "Meow Wolf Denver", description: "this is a place", latitude: 0, longitude: 0)
# Place.create(name: "Denver Art Museum", description: "this is a place", latitude: 0, longitude: 0)

# Place.create(name: "Denver Park", description: "this is a place", latitude: 0, longitude: 0)
# Place.create(name: "Cheesman Park", description: "this is a place", latitude: 0, longitude: 0)
# Place.create(name: "Confluence Park", description: "this is a place", latitude: 0, longitude: 0)

# Place.create(name: "Colorado New Style Dance Center", description: "this is a place", latitude: 0, longitude: 0)
# Place.create(name: "Evergreen School of Ballet - Le Petit", description: "this is a place", latitude: 0, longitude: 0)
# Place.create(name: "Denver Dance Center", description: "this is a place", latitude: 0, longitude: 0)

# # Comments
# Comment.create(body: "I love this place! From Elliot", user_id: User.first.id, place_id: Place.find_by(name: "Denver Botanical Gardens").id)
# Comment.create(body: "I love this place! From Rachel", user_id: User.second.id, place_id: Place.find_by(name: "Denver Selfie Museum").id)
# Comment.create(body: "I love this place! From Luke", user_id: User.third.id, place_id: Place.find_by(name: "Denver Park").id)
# Comment.create(body: "I love this place! From Cassidy", user_id: User.fourth.id, place_id: Place.find_by(name: "Colorado New Style Dance Center").id)

# # Visits by Hunt & User
# # 1
# Visit.create(
#     user_id: User.first.id,
#     place_id: Place.find_by(name: "Regis University Arboretum").id,
#     hunt_id: Hunt.find_by(title: "Plant Tour of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )
# Visit.create(
#     user_id: User.first.id,
#     place_id: Place.find_by(name: "Denver Botanical Gardens").id,
#     hunt_id: Hunt.find_by(title: "Plant Tour of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )
# Visit.create(
#     user_id: User.first.id,
#     place_id: Place.find_by(name: "Baker Gardens").id,
#     hunt_id: Hunt.find_by(title: "Plant Tour of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )

# # 2
# Visit.create(
#     user_id: User.second.id,
#     place_id: Place.find_by(name: "Denver Selfie Museum").id,
#     hunt_id: Hunt.find_by(title: "Museums of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )
# Visit.create(
#     user_id: User.second.id,
#     place_id: Place.find_by(name: "Meow Wolf Denver").id,
#     hunt_id: Hunt.find_by(title: "Museums of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )
# Visit.create(
#     user_id: User.second.id,
#     place_id: Place.find_by(name: "Denver Art Museum").id,
#     hunt_id: Hunt.find_by(title: "Museums of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )

# # 3
# Visit.create(
#     user_id: User.third.id,
#     place_id: Place.find_by(name: "Denver Park").id,
#     hunt_id: Hunt.find_by(title: "Parks of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )
# Visit.create(
#     user_id: User.third.id,
#     place_id: Place.find_by(name: "Cheesman Park").id,
#     hunt_id: Hunt.find_by(title: "Parks of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )
# Visit.create(
#     user_id: User.third.id,
#     place_id: Place.find_by(name: "Confluence Park").id,
#     hunt_id: Hunt.find_by(title: "Parks of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )

# # 4
# Visit.create(
#     user_id: User.fourth.id,
#     place_id: Place.find_by(name: "Colorado New Style Dance Center").id,
#     hunt_id: Hunt.find_by(title: "Dance Studios of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )
# Visit.create(
#     user_id: User.fourth.id,
#     place_id: Place.find_by(name: "Evergreen School of Ballet - Le Petit").id,
#     hunt_id: Hunt.find_by(title: "Dance Studios of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )
# Visit.create(
#     user_id: User.fourth.id,
#     place_id: Place.find_by(name: "Denver Dance Center").id,
#     hunt_id: Hunt.find_by(title: "Dance Studios of Denver").id,
#     complete: false,
#     wishlist: rand(2) == 1 ? true : false,
#     favorite: rand(2) == 1 ? true : false,
#     avoid: rand(2) == 1 ? true : false,
# )