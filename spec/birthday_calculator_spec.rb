require 'birthday_calculator'
require 'date'

describe BirthdayCalcaulator do

  describe "#days_until" do
    it 'returns 0 if the date is the same day' do
      today = Date.parse("17 September #{Date.today.year}")
      expect(described_class.days_until('17', 'September', today)).to eq(0)
    end

    it 'returns a number of days if the date is in the future' do
      today = Date.parse("17 September #{Date.today.year}")
      expect(described_class.days_until('20', 'December', today)).to eq(94)
    end

    it 'returns a numnber of days if the date in the past based on the date next year' do
      
    end
  end

  describe "#birthday_to_date" do
    it 'returns the birthday as a date object' do
      date = described_class.birthday_to_date('17', 'September')
      expect(date.strftime("%m/%d")).to eq('09/17')
    end
  end
end
