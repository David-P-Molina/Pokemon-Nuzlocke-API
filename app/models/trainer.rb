class Trainer < ApplicationRecord
    belongs_to :game
    belongs_to :user
    has_many :teammates
end
