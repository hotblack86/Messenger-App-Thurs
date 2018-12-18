require 'sinatra/base'

class MessageApp < Sinatra::Base
  enable :sessions

  before do
    session[:history].nil? ? session[:history]=[] : session[:history]
  end

  get '/' do
    @history = session[:history]
    erb :index
  end
# history[:message]<<(4)
# { timestamp: tweet_date, tweet: tweet_text }
  post '/new-message' do
    session[:history]<<{Time.new.strftime("%d-%m-%Y %H:%M") => (params[:message])}
    redirect '/'
  end

  run! if app_file == $0
end
