require 'sinatra/base'
require_relative 'lib/data_store'

class DatabaseServer < Sinatra::Base
  set :port, 4000

  get '/set' do
    DataStore.new.save_params(params)
  end

  get '/get' do
    DataStore.new.extract_key(params)
  end

  run! if app_file == $0
end
