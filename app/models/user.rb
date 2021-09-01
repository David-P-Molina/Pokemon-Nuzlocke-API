class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :nuzlockes
  has_many :games
  def jwt_payload
    super.merge('foo' => 'bar')
  end
end
