require 'data_mapper'
require './lib/tag'

class Message

  include DataMapper::Resource

  property :id,         Serial
  property :content,    Text
  property :created_at, DateTime

  def timestamp
    created_at.strftime("%d-%m-%y %H:%M:%S")
  end

  

end

DataMapper.finalize