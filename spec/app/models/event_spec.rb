require_relative '../../../app/models/event'

describe Event do
  describe 'model' do
    it { should respond_to( :id) }
    it { should respond_to( :amount_of_people) }
    it { should respond_to( :audience_level) }
    it { should respond_to( :max_amount_of_people) }
  
  end

  describe 'initialize' do
    it 'should create a event' do

      event = Event.new
      event.amount_of_people = 20
      event.audience_level = 'Inicial'
      event.max_amount_of_people = 200

      expect(event.amount_of_people).to eq 20
      expect(event.audience_level).to eq "Inicial"
      expect(event.max_amount_of_people).to eq 200

     
    end
  end

end
