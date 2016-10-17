require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  get '/' do
    'Hello DatabaseServer!'
  end

  run! if app_file == $0
end
