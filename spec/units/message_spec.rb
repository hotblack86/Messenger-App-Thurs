require './lib/message'

RSpec.describe 'Message' do
  let(:message) { Message.create(:content => "test1") }
  #let(:id) { Message.create(:id => 9) }
  let(:id) {double :id}

  before do
    # binding.pry
    # Timecop.freeze
  end

  it "will return a message" do
    expect(message.content).to eq "test1"
  end

  # it "will return a timestamp" do
    # message = Message.create(:content => "test1")
    # allow(Time).to receive(:now).to return Time.now
    # expect(message.created_at).to eq Time.now
  # end

  it "will return a id" do
    expect(message.id). to eq(6)
  end
end
