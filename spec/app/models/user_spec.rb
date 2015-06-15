require_relative '../../../app/models/user'

RSpec.describe User do
  describe 'model' do
    it { should respond_to( :id) }
    it { should respond_to( :user) }
    it { should respond_to( :password) }
    it { should respond_to( :role) }
  end
end
