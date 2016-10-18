ENV['RACK_ENV'] = 'test'

require 'app.rb'
require 'test/unit'
require 'rack/test'

class DatabaseServerTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
     Sinatra::Application
  end
end
