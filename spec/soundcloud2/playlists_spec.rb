require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Playlists do
  before(:all) do
    @playlists = Soundcloud2::Playlists.new(API_KEY)
  end
  
  describe '#initialize' do
    subject { @playlists.api_key }
    
    context 'when initialized with a valid API_KEY' do
      it { should_not be_nil }
    end
  end
  
  describe '#playlists' do
    subject { @playlists.playlists('920731') }
    
    context 'when called with a valid playlist_id' do
      it { should_not be_nil }
    end
  end

  describe '#playlists_shared_to_users' do
    subject { @playlists.playlists_shared_to_users('4201929') }
    
    context 'when called with a valid user_id' do
      it { should_not be_nil }
    end
  end
  
  describe '#playlists_shared_to_emails' do
    subject { @playlists.playlists_shared_to_emails('amanelis') }
    
    context 'when called with a valid username' do
      it { should_not be_nil }
    end
  end
end