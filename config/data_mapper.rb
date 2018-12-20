#require 'rubygems'
#require 'data_mapper'
require './lib/message'

DataMapper.setup(:default, 'postgres://localhost/MessengerApp')

DataMapper.finalize

DataMapper.auto_migrate!