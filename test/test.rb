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
  
	def test_index
		get "/"
		#puts last_response.inspect
		assert last_response.ok?
	end
  
   def test_body
		get "/"
		assert last_response.ok?
	end
   

	def test_static_asset
		get "/public/css/style.css"
		assert last_response.ok?
	end
 


 
end
