require 'pp'
require './myapp'

use Rack::Session::Cookie, 
      :key => 'rack.session', 
      :domain => 'example.com',
      :secret => 'some_secret'

run MyApp.new
