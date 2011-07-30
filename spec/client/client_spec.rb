require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud::Client do
  context "api" do
    before(:all) do
      @api_key = "734a173874da8c420aeb59fd03623454"
      @client = Soundcloud::Client.new(@api_key)
    end
    
    it ".users" do
      data = @client.users(:q => 'skrillex')
      puts data.inspect
    end
  end
end
