class User
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :user, String
  property :password, String
  property :role, String
end
