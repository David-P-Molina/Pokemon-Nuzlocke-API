class Game < ApplicationRecord
  belongs_to :generation
  belongs_to :user
end
