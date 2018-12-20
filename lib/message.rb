require 'data_mapper'

class Message

include DataMapper::Resource

property :id,         Serial
property :content,    Text
property :created_at, DateTime



# attr_reader :msg, :time, :id
#   def initialize(msg)
#     @msg = msg
#     @time = Time.now
#     @id = Time.now.to_i
#   end

end
