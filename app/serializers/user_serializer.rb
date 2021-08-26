class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :email, :created_at
end

# UserSerializer.new(resource).serializable_hash[:data][:attributes]
# And multiple records by,
# UserSerializer.new(resource).serializable_hash[:data].map{|data| data[:attributes]}
