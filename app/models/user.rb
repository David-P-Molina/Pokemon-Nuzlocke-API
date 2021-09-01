class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :games
  has_many :nuzlockes, through: :games
  has_many :trainers, through: :games
  has_one :graveyard

  def jwt_payload
    super.merge('foo' => 'bar')
  end
end
