class GenerationSerializer
  include JSONAPI::Serializer
  attributes :region, :release_date, :games
end
