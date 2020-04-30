require 'sinatra'
require './lib/birthday_calculator'

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
    @birthday_calculator = BirthdayCalculator.new
    #p BrithdayCalculator.days_until(@user.day, @user.month)
    @days_until = @birthday_calculator.days_until(@user.day, @user.month)
    erb :greet
  end
end
