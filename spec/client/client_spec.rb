require File.expand_path('../../spec_helper', __FILE__)
describe Groupon::Client do
  context "api" do
    before(:all) do
      api_key="39666de32f9626a0241f676db703795a9b0277cc"
      @client = Groupon::Client.new(api_key)
    end
  end
end
