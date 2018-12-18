class Message
attr_reader :msg, :time

  def initialize(msg)
    @msg = msg
    @time = Time.now
  end
end
