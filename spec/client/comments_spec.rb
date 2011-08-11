require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Comments do
  context "Comments" do
    before(:all) do
      @comments = Soundcloud2::Comments.new(API_KEY)
    end

    it ".initialize" do
      puts "TESTING: .initialize"
      puts @comments.api_key
      puts @comments.inspect
    end
    
    it ".groups" do
      puts "TESTING: .groups"
      puts @comments.comments('23145109')
    end

  end
end
