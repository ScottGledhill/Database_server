require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  get '/set' do
    @params = params
    p @key = params[:key]
  end

  run! if app_file == $0
end
