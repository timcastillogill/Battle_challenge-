require 'sinatra/base'
require './game'
require './player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  # def initialize
  #   @HP_P1 = 100
  #   @HP_P2 = 100
  # end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @hp_p1 = $player_1.hp
    @hp_p2 = $player_2.hp
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @battle_log = $game.log[-1]
    erb :play
  end

  post '/attack' do
    $game.attack($player_1, $player_2)
    redirect '/play'
  end


  run! if app_file == $0
end


# get '/' do
#   "value = " << session[:value].inspect
# end

# get '/:value' do
#   session['value'] = params['value']
# end
