require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud::Users do
  context "Users" do
    before(:all) do
      @api_key = "734a173874da8c420aeb59fd03623454"
      @client = Soundcloud::Users.new(@api_key)
    end
    
    it ".initialize" do
      puts "TESTING: initialize"
      puts @client.api_key
      puts @client.inspect
    end
    
    it ".user" do
      puts "TESTING: .user"
      puts @client.user('4201929')
    end
    
    it ".user_tracks" do
      puts "TESTING: .user_tracks"
      puts @client.user_tracks('4201929')
    end
    
    it ".user_playlists" do
      puts "TESTING: .user_playlists"
      puts @client.user_playlists('4201929')
    end
    
    it ".user_followings" do
      puts "TESTING: .user_followings"
      puts @client.user_followings('4201929')
    end
    
    it ".user_followings/:id" do
      puts "TESTING: .user_followings/:id"
      puts @client.user_followings('4201929', '1931470')
    end
    
    it ".user_followers" do
      puts "TESTING: .user_followers"
      puts @client.user_followers('4201929')
    end
    
    it ".user_followers/:id" do
      puts "TESTING: .user_followers/:id"
      puts @client.user_followers('4201929', '1931470')
    end
    
    it ".user_comments" do
      puts "TESTING: .user_comments"
      puts @client.user_comments('4201929')
    end
    
    it ".user_favorites" do
      puts "TESTING: .user_favorites"
      puts @client.user_favorites('4201929')
    end
    
    it ".user_favorites/:id" do
      puts "TESTING: .user_favorites/:id"
      puts @client.user_favorites('4201929', '1931470')
    end
    
    it ".user_groups" do
      puts "TESTING: .user_groups"
      puts @client.user_groups('4201929')
    end
  end
end
