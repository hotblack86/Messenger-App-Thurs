class Message
attr_reader :msg, :time, :id

  def initialize(msg)
    @msg = msg
    @time = Time.now
    @id = Time.now.to_i
  end
end
