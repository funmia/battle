require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  # get '/' do
  #   "Testing infrastructure working!"
  # end
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1  = Player.new(params[:player_1])
    $player_2  = Player.new(params[:player_2])
    $game = Game.new
    p params
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @commentator = ""
    erb(:play)
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_2_points = $game.attack($player_2)
    @commentator = "#{@player_1} attacked #{@player_2}!!!"
    # erb(:attack)
    erb(:play)
  end

  run! if app_file == $0
end
