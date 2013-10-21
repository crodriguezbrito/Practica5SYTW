require "test/unit"
require "rack/test"
require './lib/RockPaperScissors'

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  
  def app
   Rack::Builder.new do
	run RockPaperScissors::RPS.new        
   end
  end

 
end
