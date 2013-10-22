require 'spec_helper'

describe Rsack::Server do

  #let(:server) { Rack::MockRequest.new(Rsack::Server.new) }
  def server
    Rack::MockRequest.new(Rsack::Server.new) 
  end

  context '/' do
    it "should return a 200 code" do
      response = server.get('/')
      response.status.should == 200
    end
    
	it "Debería mostrar RPS" do
		response = server.get('/')
		response.header == ' '
	end
  end
  
  context "/?choice='rock'" do

		it "Debería devolver el código 200" do
				response = server.get("/?choice='rock'")
				response.status.should == 200
		end
	end
	
	context "/?choice='paper'" do

		it "Debería devolver el código 200" do
				response = server.get("/?choice='paper'")
				response.status.should == 200
		end
	end
  
  context "/?choice='scissors'" do

		it "Debería devolver el código 200" do
				response = server.get("/?choice='scissors'")
				response.status.should == 200
		end
	end
end
