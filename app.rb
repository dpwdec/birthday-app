require 'sinatra'

class BirthdayGreeter < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/greet' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    erb :greet
  end
end
