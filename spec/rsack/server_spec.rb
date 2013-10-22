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
end
