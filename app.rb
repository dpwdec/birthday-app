require 'sinatra'

class BirthdayGreeter < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/greet' do
    @name = params[:name]
    erb :greet
  end
end
