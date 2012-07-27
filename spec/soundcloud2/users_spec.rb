require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Users do
  context "Users" do
    before(:all) do
      @users  = Soundcloud2::Users.new(API_KEY)
      @diplo  = {:id => '16730'} 
      @djzaxx = {:id => '4201929'}
      @tiesto = {:id => '108842'}
    end

    it ".initialize" do
      @users.api_key.should == API_KEY
    end
    
    it ".users" do
      @users.users(@djzaxx[:id]).should_not_be_nil
    end
    
    it ".users_tracks" do
      @users.users_tracks(@djzaxx[:id]).first.should_not_be_nil
    end
    
    it ".users_playlists" do
      @users.users_playlists(@diplo[:id]).first.should_not_be_nil
    end
    
    it ".users_followings" do
      @users.users_followings(@djzaxx[:id]).first.should_not_be_nil
    end 

    it ".users_followings/:id" do
      @users.users_followings(@djzaxx[:id], @tiesto[:id]).should_not_be_nil
    end
 
    it ".users_followers" do
      @users.users_followers(@djzaxx[:id]).first.should_not_be_nil
    end
    
    it ".users_followers/:id" do
      @users.users_followers(@djzaxx[:id], @tiesto[:id]).should_not_be_nil
    end
    
    it ".users_comments" do
      @users.users_comments(@djzaxx[:id]).first.should_not_be_nil
    end
    
    it ".users_favorites" do
      @users.users_favorites(@djzaxx[:id]).first.should_not_be_nil
    end
    
    it ".users_favorites/:id" do
      @users.users_favorites(@djzaxx[:id], @tiesto[:id]).should_not_be_nil
    end
    
    it ".users_groups" do
      @users.users_groups(@djzaxx[:id]).first.should_not_be_nil
    end
  end
end
