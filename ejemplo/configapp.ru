require 'pp'
require './myapp'


use Rack::Session::Cookie, 
      :key => 'rack.session', 
      :domain => 'juego.com',
      :secret => 'some_secret'

run MyApp.new
