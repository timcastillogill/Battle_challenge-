require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  # def initialize
  #   @HP_P1 = 100
  #   @HP_P2 = 100
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:hp_p1] = 100
    session[:hp_p2] = 100
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @hp_p1 = session[:hp_p1]
    @hp_p2 = session[:hp_p2]
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play

  #   if #{attack_player_2}(click_button) 
  #     @HP_P1 -= 10
  #   end

  #   if #attack_player_2(click_button) 
  #     @HP_P2 -= 10
  #   end
  end


  run! if app_file == $0
end


# get '/' do
#   "value = " << session[:value].inspect
# end

# get '/:value' do
#   session['value'] = params['value']
# end