class Hunt < ActiveRecord::Base
    belongs_to :user
    has_many :visits
    has_many :places, through: :visits
    has_many :users, through: :visits


    def with_visits (user)
        self.places.uniq.map{|p| [p.commented,p.find_visit(user, self)]}
    end

    # def game_format (user)
    #     {self.title => self.with_visits(user)}
    # end

end