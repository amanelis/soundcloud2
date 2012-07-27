require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Groups do
  context "Groups" do
    before(:all) do
      @groups = Soundcloud2::Groups.new(API_KEY)
    end

    it ".initialize" do
      @groups.api_key.should == API_KEY
    end
    
    it ".groups" do
      @groups.groups('11440').should_not_be_nil
    end
    
    it ".groups_moderators" do
      @groups.groups_moderators('11440').first.should_not_be_nil
    end
    
    it ".groups_members" do
      @groups.groups_members('11440').first.should_not_be_nil
    end
    
    it ".groups_contributors" do
      @groups.groups_contributors('11440').first.should_not_be_nil
    end
    
    it ".groups_users" do
      @groups.groups_users('11440').first.should_not_be_nil
    end
    
    it ".groups_tracks" do
      @groups.groups_tracks('11440').first.should_not_be_nil
    end

  end
end
