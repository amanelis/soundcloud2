require 'spec_helper'

describe Soundcloud2::Client do
  context "Client" do
    before(:all) do
      @client = Soundcloud2::Client.new(API_KEY)
    end

    it ".initialize" do
      puts "TESTING: .api_key"
      puts "TESTING: .inspect"
      puts @client.api_key
      puts @client.inspect
    end
  
    it ".groups" do
      puts "TESTING: .groups"
      data = @client.groups(:q => 'dubstep')
      response.status.should == 200
    end
    # 
    # it ".playlists" do
    #   puts "TESTING: .playlists"
    #   data = @client.playlists(:q => 'dubstep')
    #   puts data.inspect
    # end
    # 
    # it ".tracks" do
    #   puts "TESTING: .tracks"
    #   data = @client.tracks(:q => 'A new world')
    #   puts data.inspect
    # end
    # 
    # it ".users" do
    #   puts "TESTING: .users"
    #   data = @client.users(:q => 'skrillex')
    #   puts data.inspect
    # end

  end
end
