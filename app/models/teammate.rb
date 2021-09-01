class Teammate < ApplicationRecord
  belongs_to :trainer
  belongs_to :pokemon
  has_one :gravestone

end
