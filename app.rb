require 'sinatra/base'
require './lib/message'
#require 'data_mapper'
require './config/data_mapper'
# require 'pry'

class MessageApp < Sinatra::Base
  enable :sessions

  #before do
   # session[:list].nil? ? session[:list]=[] : session[:list]
  #end

  get '/' do
    @messages = Message.all
    #@list = session[:list]
    erb :index
  end

  post '/new-message' do
    Message.create(content: params[:content])
    #message = Message.new(params[:message])
    #session[:list]<< message
    redirect '/'
  end

  get '/messages/:id' do
    @message = Message.get(params[:id])
    #@msg_id = params[:id].to_i
    #@list = session[:list]
    erb(:message)
  end

  run! if app_file == $0
end
