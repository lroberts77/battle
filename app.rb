require 'sinatra/base'

class Battle < Sinatra::Base
    set:sessions, true
    
    get '/' do
     "Testing infrastructre working!"
    end
    get '/players' do
      erb:index
    end
    run! if app_file == $0
end

