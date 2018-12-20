require './lib/message'

RSpec.describe 'Message' do
  let(:message) { Message.new("test1") }
  subject(:message) {Message.new("test1")}
    before do
      # binding.pry
      #Timecop.freeze
    end

    it "will return a message" do
      message = Message.new("test1")
      expect(message.msg).to eq "test1"
    end

    it "will return a timestamp" do
      message = Message.new("test1")
      # allow(Time).to receive(:now).to return
      expect(message.time).to eq Time.now
    end

    it "will return a id" do
      message = Message.new("test1")
      expect(message.id). to eq Time.now.to_i
    end
end
