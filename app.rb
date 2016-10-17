require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  get '/set' do
    @params = params
  end

  get '/get' do
    extract_key
  end

  def extract_key
    p @key = params[:key]
  end

  run! if app_file == $0
end
