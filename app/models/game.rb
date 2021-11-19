class Game < ApplicationRecord
  belongs_to :generation
  has_many :user
  has_many :nuzlockes
  has_many :trainers
  has_many :pokemon
end
