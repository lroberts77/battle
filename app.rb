require 'sinatra/base'
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
      $player_1 = Player.new(params[:player_1])
      $player_2 = Player.new(params[:player_2])
      redirect '/play'
    end

    get '/attack' do
      @p1 = $player_1
      @p2 = $player_2
      @p1.attack(@p2)
      erb :attack
    end

    get '/play' do
      @p1 = $player_1
      @p2 = $player_2
      erb :play
    end
    run! if app_file == $0
end

