class Hunt < ActiveRecord::Base
    belongs_to :user
    has_many :visits
    has_many :places, through: :visits
    has_many :users, through: :visits

end