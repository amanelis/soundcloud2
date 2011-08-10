require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud::Tracks do
  context "Tracks" do
    before(:all) do
      @tracks = Soundcloud::Tracks.new(API_KEY)
    end
    
    it ".initialize" do
      puts "TESTING: initialize"
      puts @tracks.api_key
      puts @tracks.inspect
    end
    
    it ".tracks" do
      puts "TESTING: .tracks"
      puts @tracks.tracks('20296934')
    end
    
    it ".tracks_comments" do
      puts "TESTING: .tracks_comments"
      puts @tracks.tracks_comments('20296934')
    end
    
    it ".tracks_comments/:id" do
      puts "TESTING: .tracks_comments/:id"
      puts @tracks.tracks_comments('20296934', '23145109')
    end
    
    it ".tracks_favoriters" do
      puts "TESTING: .tracks_favoriters"
      puts @tracks.tracks_favoriters('20296934')      
    end
    
    it ".tracks_favoriters/:id" do
      puts "TESTING: .tracks_favoriters/:id"
      puts @tracks.tracks_favoriters('20296934', '2769794')      
    end
    
    it ".tracks_shared_to_users" do
      puts "TESTING: .tracks_shared_to_users"
      puts @tracks.tracks_shared_to_users('20296934')
    end
    
    it ".tracks_shared_to_emails" do
      puts "TESTING: .tracks_shared_to_emails"
      puts @tracks.tracks_shared_to_emails('20296934')
    end
  end
end
