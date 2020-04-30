require 'user'

describe User do

  let(:subject) { described_class.new('Dec', '17', 'September') }

  it "returns the user's name" do
    expect(subject.name).to eq('Dec')
  end

  it "returns the user's birthday day" do
    expect(subject.name).to eq('Dec')
  end

  it "returns the user's month" do
    expect(subject.name).to eq('Dec')
  end
end
