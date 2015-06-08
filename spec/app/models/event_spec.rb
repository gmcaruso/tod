require_relative '../../../app/models/event'

describe Event do
  describe 'model' do
    it { should respond_to( :id) }
    it { should respond_to( :amount_of_people) }
    it { should respond_to( :audience_level) }
  end

  describe 'initialize' do
    it 'should create a event' do

      event = Event.new
      event.amount_of_people = 20
      event.audience_level = 'Inicial'

      expect(event.amount_of_people).to eq 20
      expect(event.audience_level).to eq "Inicial"
    end
  end

end
