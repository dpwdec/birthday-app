require 'sinatra'

class BirthdayGreeter < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/process' do
    session[:user] = User.new(params[:name], params[:day], params[:month])
    redirect('/greet')
  end

  get '/greet' do
    @user = session[:user]
    erb :greet
  end
end
