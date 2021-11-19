class GenerationSerializer
  include JSONAPI::Serializer
  attributes :region, :release_date, :games
  # has_many :games
end
