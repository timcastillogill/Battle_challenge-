require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    "Player 1 = " << session['Player 1'].inspect
    "Player 2 = " << session['Player 2'].inspect
  end

  get '/play' do
    session['Player 1'] = params['Player 1']
    session['Player 2'] = params['Player 2']
    erb :play
  end


  run! if app_file == $0
end


# get '/' do
#   "value = " << session[:value].inspect
# end

# get '/:value' do
#   session['value'] = params['value']
# end