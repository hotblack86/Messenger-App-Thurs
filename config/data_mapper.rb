#require 'rubygems'
#require 'data_mapper'
require './lib/message'

DataMapper.setup(:default, 'postgres://localhost/MessengerApp{ENV["RACK_ENV"]}')

DataMapper.finalize

DataMapper.auto_upgrade!