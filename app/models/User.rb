class User < ActiveRecord::Base
    has_many :visits
    has_many :hunts
    has_many :comments
    has_many :places, through: :visits
    has_many :hunts, through: :visits

    def start_hunt (hunt)
        hunt.places.map{|p|
            Visit.create(
                user_id: self.id,
                place_id: p.id,
                hunt_id: hunt.id,
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

    def favorites
        self.visits.where(favorite: true).map{|v| v.place.commented}
    end

    def wishlist
        self.visits.where(wishlist: true).map{|v| v.place.commented}
    end

    def avoids
        self.visits.where(avoid: true).map{|v| v.place.commented}
    end

    def lists
        {
            "favorites": self.favorites,
            "wishlist": self.wishlist,
            "avoids": self.avoids,
        }
    end

    def in_progress
        {in_progress: hunts.uniq.map{|h| {h.title => h.with_visits(self)}}}
    end
    

    def stats
        {stats: {
        score: self.visits.where(complete: true).count * 10,
        }}
    end

end