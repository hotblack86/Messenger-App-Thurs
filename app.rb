ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './lib/message.rb'
require './lib/tag.rb'
require 'data_mapper'
require './config/data_mapper.rb'
require 'pry'
require 'rubygems'

class MessageApp < Sinatra::Base

  set :sessions, true
  set :method_override, true

  get '/' do
    @messages = Message.all
    #@tag = Tag.get(params[:id])
    erb(:index)
  end

  post '/message' do
    Message.create(content: params[:content])
    #Tag.create(label: params[:label])
    redirect '/'
  end

  get '/messages/:id' do
    @message = Message.get(params[:id])
    erb(:message)
  end

  get '/message/:id/edit' do
    @message = Message.get(params[:id])
    erb (:edit)
  end

  post '/edited-message/:id' do
    @message = Message.get(params[:id])
    @message.update(:content => params[:message])
    redirect '/'
  end

  delete '/delete-message/:id' do
    @message = Message.get(params[:id]).destroy
    redirect '/'
  end

  run! if app_file == $0
end
