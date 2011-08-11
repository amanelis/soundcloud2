require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Groups do
  context "Groups" do
    before(:all) do
      @groups = Soundcloud2::Groups.new(API_KEY)
    end

    it ".initialize" do
      puts "TESTING: .initialize"
      puts @groups.api_key
      puts @groups.inspect
    end
    
    it ".groups" do
      puts "TESTING: .groups"
      puts @groups.groups('11440')
    end
    
    it ".groups_moderators" do
      puts "TESTING: .groups_moderators"
      puts @groups.groups_moderators('11440')
    end
    
    it ".groups_members" do
      puts "TESTING: .groups_members"
      puts @groups.groups_members('11440')
    end
    
    it ".groups_contributors" do
      puts "TESTING: .groups_contributors"
      puts @groups.groups_contributors('11440')
    end
    
    it ".groups_users" do
      puts "TESTING: .groups_users"
      puts @groups.groups_users('11440')
    end
    
    it ".groups_tracks" do
      puts "TESTING: .groups_tracks"
      puts @groups.groups_tracks('11440')
    end

  end
end
