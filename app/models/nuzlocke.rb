class Nuzlocke < ApplicationRecord
    belongs_to :user
    belongs_to :game
    has_many :rules
    has_one :trainer
end
