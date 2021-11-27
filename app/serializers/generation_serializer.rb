class GenerationSerializer
  include JSONAPI::Serializer
  attributes :region, :history, :geography, :games
  # has_many :games
end
