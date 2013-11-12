require 'spec_helper'

describe Soundcloud2::Client do
  before(:all) do
    @client = Soundcloud2::Client.new(API_KEY)
  end
  
  describe '#initialize' do
    subject { @client }
    
    context 'when initialized with a valid API_KEY' do
      it { should_not be_nil }
    end
  end
  
  describe '#api_key' do
    subject { @client.api_key }
    
    context 'when calling the #api_key method' do
      it { should eq(API_KEY) }
    end
  end
  
  describe '#groups' do
    subject { @client.groups(:q => 'dubstep').first }
    
    context 'when calling the #groups method' do
      it { should_not be_nil }
    end
  end
  
  # describe '#playlists' do
  #   subject { @client.playlists(:q => 'dubstep').first }
  #   
  #   context 'when calling the #playlists method' do
  #     it { should_not be_nil }
  #   end
  # end
  
  describe '#tracks' do
    subject { @client.tracks(:q => 'A new world').first }
    
    context 'when calling the #tracks method' do
      it { should_not be_nil }
    end
  end
  
  describe '#users' do
    subject { @client.users(:q => 'skrillex').first }
    
    context 'when calling the #users method' do
      it { should_not be_nil }
    end
  end
end
