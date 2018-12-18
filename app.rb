require 'sinatra/base'
require_relative './lib/message'
class MessageApp < Sinatra::Base
  enable :sessions

  before do
    session[:history].nil? ? session[:history]=[] : session[:history]
  end

  get '/' do
    @history = session[:history]
    erb :index
  end

  post '/new-message' do
    message = Message.new(params[:message])
    session[:history]<< message
    redirect '/'
  end

  run! if app_file == $0
end
