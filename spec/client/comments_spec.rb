require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Comments do
  context "Comments" do
    before(:all) do
      @comments = Soundcloud2::Comments.new(API_KEY)
    end

    it ".initialize" do
      @comments.api_key.should == API_KEY
    end

    it ".groups" do
      @comments.comments('23145109').should_not_be_nil
    end
  end
end
