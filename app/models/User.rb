class User < ActiveRecord::Base
    has_many :visits
    has_many :places, through: :visits
    has_many :hunts, through: :visits

    def start_hunt (hunt_instance)
        hunt_instance.places.map{|p|
            Visit.create(
                user_id: self.id,
                place_id: p.id,
                hunt_id: hunt_instance.id,
                complete: false,
                wishlist: rand(2) == 1 ? true : false,
                favorite: rand(2) == 1 ? true : false,
                avoid: rand(2) == 1 ? true : false,
            )
        }
    end

    def get_game
        self.visits.all
    end

end