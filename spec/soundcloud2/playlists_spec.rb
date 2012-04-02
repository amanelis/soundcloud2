require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Playlists do
  context "Playlists" do
    before(:all) do
      @playlists = Soundcloud2::Playlists.new(API_KEY)
    end

    it ".initialize" do
      puts "TESTING: .initialize"
      puts @playlists.api_key
      puts @playlists.inspect
    end
    
    it ".playlists" do 
      puts "TESTING: .playlists"
      puts @playlists.playlists('920731')
    end
    
    it ".playlists_shared_to_users" do
      puts "TESTING: .playlists_shared_to_users"
      puts @playlists.playlists_shared_to_users('4201929')
    end
    
    it ".playlists_shared_to_emails" do
      puts "TESTING: .playlists_shared_to_emails"
      puts @playlists.playlists_shared_to_emails('amanelis')
    end

  end
end
