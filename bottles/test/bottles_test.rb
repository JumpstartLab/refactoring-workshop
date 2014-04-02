gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'sinatra/base'
require 'rack/test'
require './lib/app'

class BottlesTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Bottles::App
  end

  def test_it_works
    # Call the endpoint with:
    # get '/'
    #
    # You can get the body of the response with
    # `last_response.body`
  end
end
