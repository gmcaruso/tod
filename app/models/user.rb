class User
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :user, String
  property :password, String
  property :role, String

  def self.authenticate(user, password)
    user = User.first(:user => user)
    if user != nil
      if user.password == password
        return true
      end
    else
      return nil
    end
  end

end
