require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Tracks do
  context "Tracks" do
    before(:all) do
      @tracks = Soundcloud2::Tracks.new(API_KEY)
    end
    
    it ".initialize" do
      @tracks.api_key.should == API_KEY
    end
    
    it ".tracks" do
      @tracks.tracks('20296934').should_not_be_nil
    end
    
    it ".tracks_comments" do
      @tracks.tracks_comments('20296934').first.should_not_be_nil
    end
    
    it ".tracks_comments/:id" do
      @tracks.tracks_comments('20296934', '23145109').should_not_be_nil
    end
    
    it ".tracks_favoriters" do
      @tracks.tracks_favoriters('20296934').first.should_not_be_nil
    end
    
    it ".tracks_favoriters/:id" do
      @tracks.tracks_favoriters('20296934', '2769794').should_not_be_nil
    end
  end
end
