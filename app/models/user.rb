class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :games
  has_many :nuzlockes
  has_many :rules, through: :nuzlocke
  has_many :trainers
  has_many :teammates, through: :trainer
  has_many :pokemon, through: :games
  has_one :graveyard
  has_many :gravestones, through: :graveyard

  def jwt_payload
    super.merge('foo' => 'bar')
  end
end
