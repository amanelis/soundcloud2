require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Client do
  before(:all) do
    @client = Soundcloud2::Client.new(API_KEY)
  end
  
  describe '#playlists' do
    subject { @client.tracks(:q => 'Skrillex - Do Da Oliphant', :order => 'hotness').first }
    
    context 'when called with a valid query and an order' do
      it { should_not be_nil }
    end
  end
end