class Hunt < ActiveRecord::Base
    has_many :users
    has_many :visits
    has_many :places, through: :visits
    has_many :users, through: :visits

end