require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Client do
  context "Client" do
    before(:all) do
      @client = Soundcloud2::Client.new(API_KEY)
      @tracks = Soundcloud2::Tracks.new(API_KEY)
    end

    it "Soundcloud2::Client.new(API_KEY).tracks" do
      @client.tracks(:q => 'Skrillex - Do Da Oliphant', :order => 'hotness').first.should_not_be_nil
    end
  end
end
