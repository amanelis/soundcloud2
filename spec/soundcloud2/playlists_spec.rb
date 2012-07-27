require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Playlists do
  context "Playlists" do
    before(:all) do
      @playlists = Soundcloud2::Playlists.new(API_KEY)
    end

    it ".initialize" do
      @playlists.api_key.should == API_KEY
    end
    
    it ".playlists" do 
      @playlists.playlists('920731').should_not_be_nil
    end
    
    it ".playlists_shared_to_users" do
      @playlists.playlists_shared_to_users('4201929').should_not_be_nil
    end
    
    it ".playlists_shared_to_emails" do
      @playlists.playlists_shared_to_emails('amanelis').should_not_be_nil
    end

  end
end
