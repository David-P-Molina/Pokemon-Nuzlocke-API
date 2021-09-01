class Nuzlocke < ApplicationRecord
    belongs_to :user
    has_many :rules
end
