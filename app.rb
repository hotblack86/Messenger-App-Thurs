ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './lib/message'
#require 'data_mapper'
require './config/data_mapper'
# require 'pry'

class MessageApp < Sinatra::Base
  enable :sessions

  get '/' do
    @messages = Message.all
    erb :index
  end

  post '/new-message' do
    Message.create(content: params[:content])
    redirect '/'
  end

  get '/messages/:id' do
    @message = Message.get(params[:id])
    erb(:message)
  end

  run! if app_file == $0
end
