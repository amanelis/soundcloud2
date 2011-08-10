require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud::Tracks do
  context "Tracks" do
    before(:all) do
      @track = Soundcloud::Tracks.new(API_KEY)
    end
    
    it ".initialize" do
      puts "TESTING: initialize"
      puts @track.api_key
      puts @track.inspect
    end
    
  end
end
