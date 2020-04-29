require 'sinatra'

class BirthdayGreeter < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/greet' do
    erb :greet
  end
end
