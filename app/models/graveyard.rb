class Graveyard < ApplicationRecord
  belongs_to :trainer
  belongs_to :user
  has_many :gravestones
end
