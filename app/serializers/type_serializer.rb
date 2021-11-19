class TypeSerializer
  include JSONAPI::Serializer
  attributes :name, :double_damage_from, :double_damage_to, :half_damage_from, :half_damage_to, :no_damage_from, :no_damage_to
end
