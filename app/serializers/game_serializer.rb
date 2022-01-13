class GameSerializer
  include JSONAPI::Serializer
  attributes :name, :release_date, :description, :generation_id, :platform
end
