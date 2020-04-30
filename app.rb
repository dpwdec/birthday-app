require 'sinatra'

class BirthdayGreeter < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/process' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect('/greet')
  end

  get '/greet' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    erb :greet
  end
end
