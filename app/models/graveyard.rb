class Graveyard < ApplicationRecord
  belongs_to :user
  has_many :trainers
  has_many :teammates, through: :trainer
  has_many :gravestones
end
