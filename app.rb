require 'sinatra/base'
require_relative 'lib/data_store'

class DatabaseServer < Sinatra::Base
  get '/set' do
    DataStore.save_params(params)
  end

  get '/get' do
    extract_key
  end

  def extract_key
    @key = params[:key]
  end

  run! if app_file == $0
end
