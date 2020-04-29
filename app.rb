require 'sinatra'

class BirthdayGreeter < Sinatra::Base
  get '/' do
    'Happy birthday'
  end
end
