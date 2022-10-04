class Visit < ActiveRecord::Base
    belongs_to :place
    belongs_to :user
    belongs_to :hunt

    has_many :comments


    def details
        {
            "place": place,
            "user": user,
            "hunt": hunt,
        }
    end

    
end