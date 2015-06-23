require_relative '../../../app/models/user'

describe User do
  
  describe 'model' do
    it { should respond_to( :id) }
    it { should respond_to( :name) }
    it { should respond_to( :email) }
    it { should respond_to( :role) }
    it { should respond_to( :uid) }
    it { should respond_to( :provider) }
    it { should respond_to( :password) }
  end

end