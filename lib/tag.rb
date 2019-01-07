require 'data_mapper'
require './lib/message'

class Tag

  include DataMapper::Resource

  property :id,       Serial
  property :label,    Text


end

DataMapper.finalize