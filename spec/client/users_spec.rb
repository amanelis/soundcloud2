require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud::Users do
  context "Users" do
    before(:all) do
      @user = Soundcloud::Users.new(API_KEY)
    end

    it ".initialize" do
      puts "TESTING: initialize"
      puts @user.api_key
      puts @user.inspect
    end
    
    it ".user" do
      puts "TESTING: .user"
      puts @user.user('4201929')
    end
    
    it ".user_tracks" do
      puts "TESTING: .user_tracks"
      puts @user.user_tracks('4201929')
    end
    
    it ".user_playlists" do
      puts "TESTING: .user_playlists"
      puts @user.user_playlists('4201929')
    end
    
    it ".user_followings" do
      puts "TESTING: .user_followings"
      puts @user.user_followings('4201929')
    end 

    it ".user_followings/:id" do
      puts "TESTING: .user_followings/:id"
      puts @user.user_followings('4201929', '1931470')
    end
 
    it ".user_followers" do
      puts "TESTING: .user_followers"
      puts @user.user_followers('4201929')
    end
    
    it ".user_followers/:id" do
      puts "TESTING: .user_followers/:id"
      puts @user.user_followers('4201929', '1931470')
    end
    
    it ".user_comments" do
      puts "TESTING: .user_comments"
      puts @user.user_comments('4201929')
    end
    
    it ".user_favorites" do
      puts "TESTING: .user_favorites"
      puts @user.user_favorites('4201929')
    end
    
    it ".user_favorites/:id" do
      puts "TESTING: .user_favorites/:id"
      puts @user.user_favorites('4201929', '1931470')
    end
    
    it ".user_groups" do
      puts "TESTING: .user_groups"
      puts @user.user_groups('4201929')
    end
  end
end
