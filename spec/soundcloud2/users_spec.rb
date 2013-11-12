require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Users do
  before(:all) do
    @users  = Soundcloud2::Users.new(API_KEY)
    @diplo  = {:id => '16730'} 
    @djzaxx = {:id => '4201929'}
    @tiesto = {:id => '108842'}
  end
  
  describe '#initialize' do
    subject { @users.api_key }
    
    context 'when initialized with a valid API_KEY' do
      it { should_not be_nil }
    end
  end
  
  describe '#users' do
    subject { @users.users(@djzaxx[:id]) }
    
    context 'when called with a valid user' do
      it { should_not be_nil }
    end
  end
  
  describe '#users_playlists' do
    subject { @users.users_playlists(@diplo[:id]).first }
    
    context 'when called with a valid user' do
      it { should_not be_nil }
    end
  end
  
  describe '#users_followings' do
    subject { @users.users_followings(@djzaxx[:id]).first }
    
    context 'when called with a valid user' do
      it { should_not be_nil }
    end
  end

  describe '#users_followings/:id' do
    subject { @users.users_followings(@djzaxx[:id], @tiesto[:id]) }
    
    context 'when called with a valid user and a second valid user' do
      it { should_not be_nil }
    end
  end 
  
  describe '#users_followers' do
    subject { @users.users_followers(@djzaxx[:id]).first }
    
    context 'when called with a valid user' do
      it { should_not be_nil }
    end
  end 
  
  describe '#users_followers/:id' do
    subject { @users.users_followers(@djzaxx[:id], @tiesto[:id]) }
    
    context 'when called with a valid user and a second valid user' do
      it { should_not be_nil }
    end
  end
  
  describe '#users_comments' do
    subject { @users.users_comments(@djzaxx[:id]).first }
    
    context 'when called with a valid user' do
      it { should_not be_nil }
    end
  end
  
  describe '#users_favorites' do
    subject { @users.users_favorites(@djzaxx[:id]).first }
    
    context 'when called with a valid user' do
      it { should_not be_nil }
    end
  end

  describe '#users_favorites/:id' do
    subject { @users.users_favorites(@djzaxx[:id], @tiesto[:id]) }
    
    context 'when called with a valid user and a second valid user' do
      it { should_not be_nil }
    end
  end

  describe '#users_groups' do
    subject { @users.users_groups(@djzaxx[:id]).first }
    
    context 'when called with a valid user' do
      it { should_not be_nil }
    end
  end
end