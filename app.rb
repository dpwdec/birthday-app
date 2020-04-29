require 'sinatra'

class BirthdayGreeter < Sinatra::Base
  get '/' do
    erb :index
  end
end
