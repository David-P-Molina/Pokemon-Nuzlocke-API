class Generation < ApplicationRecord
    has_many :games
    has_many :pokemon, through: :games
end
