require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Tracks do
  before(:all) do
    @tracks = Soundcloud2::Tracks.new(API_KEY)
  end
    
  describe '#initialize' do
    subject { @tracks.api_key }
    
    context 'when initialized with a valid API_KEY' do
      it { should_not be_nil }
    end
  end  
  
  describe '#tracks' do
    subject { @tracks.tracks('20296934') }
    
    context 'when called with a valid track_id' do
      it { should_not be_nil }
    end
  end
  
  describe '#tracks_comments' do
    subject { @tracks.tracks_comments('20296934') }
    
    context 'when called with a valid track_id' do
      it { should_not be_nil }
    end
  end
  
  describe '#tracks_comments/:id' do
    subject { @tracks.tracks_comments('20296934', '23145109') }
    
    context 'when called with a valid track_id and comment_id' do
      it { should_not be_nil }
    end
  end
  
  describe '#tracks_favoriters/:id' do
    subject { @tracks.tracks_favoriters('20296934', '2769794') }
    
    context 'when called with a valid track_id user_id' do
      it { should_not be_nil }
    end
  end
  
  describe '#tracks_favoriters' do
    subject { @tracks.tracks_favoriters('20296934') }
    
    context 'when called with a valid track_id' do
      it { should_not be_nil }
    end
  end
end
