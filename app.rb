require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/player.rb'

class Battle < Sinatra::Base
    enable :sessions
    
    get '/test' do
     "Testing infrastructre working!"
    end

    get '/' do
      erb :index
    end

    post '/names' do
      player1 = Player.new(params[:player_1])
      player2 = Player.new(params[:player_2])
      $game = Game.new(player1, player2)
      redirect '/play'
    end

    get '/play' do
      @game = $game
      erb :play
    end

    get '/attack' do
      @game = $game
      @game.attack(@game.player2)
      erb :attack
    end


    run! if app_file == $0
end

