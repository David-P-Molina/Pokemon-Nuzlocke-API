class Gravestone < ApplicationRecord
  belongs_to :trainer
  belongs_to :teammate
  belongs_to :nuzlocke
end
