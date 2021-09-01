class Graveyard < ApplicationRecord
  belongs_to :trainer
  has_many :gravestones
end
