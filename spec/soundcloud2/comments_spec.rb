require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Comments do
  before(:all) do
    @comments = Soundcloud2::Comments.new(API_KEY)
  end
  
  describe '#initialize' do
    subject { @comments.api_key }
    
    context 'when initialized with a valid API_KEY' do
      it { should_not be_nil }
    end
  end
  
  describe '#groups' do
    subject { @comments.comments('23145109') }
    
    context 'when called with a valid group_id' do
      it { should_not be_nil }
    end
  end
end