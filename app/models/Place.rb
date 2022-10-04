class Place < ActiveRecord::Base
    has_many :visits
    has_many :comments
    has_many :hunts, through: :visits
    has_many :users, through: :visits


    def commented
        {"place": self,
        "comments": self.comments}
    end

    def find_visit (user, hunt)
        {linked_visit: Visit.where(user: user, hunt: hunt, place: self)}
    end
        

end