class Visit < ActiveRecord::Base
    belongs_to :place
    belongs_to :user
    belongs_to :hunt
    
end