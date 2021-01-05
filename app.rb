require_relative 'config/environment'

class App < Sinatra::Base

  # configure do
  #   enable :sessions
  #   set :session_secret, "sercret"
  # end

  # get "/" do
  #   erb :index
  # end


  #   get '/hey' do
  #     @session = session
  #   end
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @sessions = session
    item = params["item"]
    @sessions[:item] = item
  end

end