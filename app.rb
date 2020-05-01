require 'sinatra'
require './lib/birthday_calculator'
require './lib/user'

class BirthdayGreeter < Sinatra::Base

  configure(:development) { set :session_secret, 'set' }
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
    @birthday_calculator = BirthdayCalculator.new
    @days_until = @birthday_calculator.days_until(@user.day, @user.month).to_i
    erb :greet
  end
end
