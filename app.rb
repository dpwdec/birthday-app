require 'sinatra'

class BirthdayGreeter < Sinatra::Base
  get '/' do
    'Hello there!'
  end
end
