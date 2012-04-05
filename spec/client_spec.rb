require 'spec_helper'

describe Soundcloud2::Client do
  context "Client" do
    before(:all) do
      @client = Soundcloud2::Client.new(API_KEY)
    end

    it ".initialize" do
      @client.api_key.should == API_KEY
    end
  
    it ".groups" do
      @client.groups(:q => 'dubstep').first.should_not_be_nil
    end
    
    it ".playlists" do
      @client.playlists(:q => 'dubstep').first.should_not_be_nil
    end
    
    it ".tracks" do
      @client.tracks(:q => 'A new world').first.should_not_be_nil
    end
    
    it ".users" do
      @client.users(:q => 'skrillex').first.should_not_be_nil
    end

  end
end
