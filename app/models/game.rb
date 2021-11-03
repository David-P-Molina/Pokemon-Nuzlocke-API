class Game < ApplicationRecord
  belongs_to :generation
  belongs_to :user
  has_many :nuzlockes
  has_many :trainers
  has_many :pokemon
end
