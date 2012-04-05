require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Users do
  context "Users" do
    before(:all) do
      @users = Soundcloud2::Users.new(API_KEY)
    end

    it ".initialize" do
      @users.api_key.should == API_KEY
    end
    
    it ".users" do
      @users.users('4201929').should_not_be_nil
    end
    
    it ".users_tracks" do
      @users.users_tracks('4201929').first.should_not_be_nil
    end
    
    it ".users_playlists" do
      @users.users_playlists('4201929').first.should_not_be_nil
    end
    
    it ".users_followings" do
      @users.users_followings('4201929').first.should_not_be_nil
    end 

    it ".users_followings/:id" do
      @users.users_followings('4201929', '1931470').should_not_be_nil
    end
 
    it ".users_followers" do
      @users.users_followers('4201929').first.should_not_be_nil
    end
    
    it ".users_followers/:id" do
      @users.users_followers('4201929', '1931470').should_not_be_nil
    end
    
    it ".users_comments" do
      @users.users_comments('4201929').first.should_not_be_nil
    end
    
    it ".users_favorites" do
      @users.users_favorites('4201929').first.should_not_be_nil
    end
    
    it ".users_favorites/:id" do
      @users.users_favorites('4201929', '1931470').should_not_be_nil
    end
    
    it ".users_groups" do
      @users.users_groups('4201929').first.should_not_be_nil
    end
  end
end
