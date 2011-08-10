require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud::Users do
  context "Users" do
    before(:all) do
      @users = Soundcloud::Users.new(API_KEY)
    end

    it ".initialize" do
      puts "TESTING: initialize"
      puts @users.api_key
      puts @users.inspect
    end
    
    it ".users" do
      puts "TESTING: .users"
      puts @users.users('4201929')
    end
    
    it ".users_tracks" do
      puts "TESTING: .users_tracks"
      puts @users.users_tracks('4201929')
    end
    
    it ".users_playlists" do
      puts "TESTING: .users_playlists"
      puts @users.users_playlists('4201929')
    end
    
    it ".users_followings" do
      puts "TESTING: .users_followings"
      puts @users.users_followings('4201929')
    end 

    it ".users_followings/:id" do
      puts "TESTING: .users_followings/:id"
      puts @users.users_followings('4201929', '1931470')
    end
 
    it ".users_followers" do
      puts "TESTING: .users_followers"
      puts @users.users_followers('4201929')
    end
    
    it ".users_followers/:id" do
      puts "TESTING: .users_followers/:id"
      puts @users.users_followers('4201929', '1931470')
    end
    
    it ".users_comments" do
      puts "TESTING: .users_comments"
      puts @users.users_comments('4201929')
    end
    
    it ".users_favorites" do
      puts "TESTING: .users_favorites"
      puts @users.users_favorites('4201929')
    end
    
    it ".users_favorites/:id" do
      puts "TESTING: .users_favorites/:id"
      puts @users.users_favorites('4201929', '1931470')
    end
    
    it ".users_groups" do
      puts "TESTING: .users_groups"
      puts @users.users_groups('4201929')
    end
  end
end
