ENV['RACK_ENV'] = 'test'

require 'spec_helper'
require 'test/unit'
require 'rack/test'

class DatabaseServerTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
     DatabaseServer.new
  end

  def test_it_can_set_key_and_value
    get '/set?key=value'
    assert last_response.ok?
    assert_equal 'key, value', last_response.body
  end

  def test_it_can_display_key
    get '/get?key=somekey'
    assert last_response.ok?
    assert_equal 'somekey', last_response.body
  end
end
