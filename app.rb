require 'sinatra/base'

class Battle < Sinatra::Base
    set:sessions, true
    
    get '/' do
      "Hello battle" "\n" "I win"
    end

    run! if app_file == $0
end

