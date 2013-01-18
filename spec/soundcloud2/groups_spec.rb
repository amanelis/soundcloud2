require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Groups do
  before(:all) do
    @groups = Soundcloud2::Groups.new(API_KEY)
  end

  describe '#initialize' do
    subject { @groups.api_key }
    
    context 'when initialized with a valid API_KEY' do
      it { should_not be_nil }
    end
  end
  
  describe '#groups' do
    subject { @groups.groups('11440') }
    
    context 'when called with a valid group_id' do
      it { should_not be_nil }
    end
  end
  
  describe '#groups_moderators' do
    subject { @groups.groups_moderators('11440').first }
    
    context 'when called with a valid group_id' do
      it { should_not be_nil }
    end
  end
    
  describe '#groups_members' do
    subject { @groups.groups_members('11440').first }
    
    context 'when called with a valid group_id' do
      it { should_not be_nil }
    end
  end
  
  describe '#groups_contributors' do
    subject { @groups.groups_contributors('11440').first }
    
    context 'when called with a valid group_id' do
      it { should_not be_nil }
    end
  end

  describe '#groups_users' do
    subject { @groups.groups_users('11440').first }
    
    context 'when called with a valid group_id' do
      it { should_not be_nil }
    end
  end
  
  describe '#groups_tracks' do
    subject { @groups.groups_tracks('11440').first }
    
    context 'when called with a valid group_id' do
      it { should_not be_nil }
    end
  end
end