require File.expand_path('../../spec_helper', __FILE__)

describe Soundcloud2::Client do
  context "Client" do
    before(:all) do
      @client = Soundcloud2::Client.new(API_KEY)
      @tracks = Soundcloud2::Tracks.new(API_KEY)
    end
  
    it "Soundcloud2::Client.new(API_KEY).tracks" do
      puts "---------------------------------------------------------"
      puts "Soundcloud::Client.new(API_KEY).tracks(:q => 'Song title')"
      results = Array.new
      results << @client.tracks(:q => 'Skrillex - Do Da Oliphant')
      results << @client.tracks(:q => 'Kryder K2')
      results << @client.tracks(:q => 'Ry Legit - Woody (CLIP)')
      results << @client.tracks(:q => 'Oblivion Feat. Ashley Merges - Bass Freq (Oblivion VIP) [FREE DOWNLOAD]')
      results << @client.tracks(:q => 'Kayla ft. Lil Jon - Step On It (Proper Villains remix)')
      results << @client.tracks(:q => 'Supreme - The Fortress (P0GMAN Remix) (CLIP) [FORTHCOMING BADMAN DIGITAL]')
      results << @client.tracks(:q => 'Dubsidia & Balkansky - Annoying Dog (Original Mix) DEMO Play Me Records')
      
      results.each do |r|
        s = r.first
        
        puts "Song Title: #{s.title}"
        puts "Song id: #{s.id}"
        puts "Genre: #{s.genre}"
        puts "Slug: #{s.permalink}"
        puts "Comments: #{s.comment_count}"
        puts "Downloads: #{s.download_count}"
        puts "Playbacks: #{s.playback_count}"
        puts "Favorites: #{s.favoritings_count}"
        puts "https://api.soundcloud.com/tracks/#{s.id}/stream?client_id=281bf78db858fb70bf8ccef48976dde4"
        puts "*********************************************************************************************"
        puts s.inspect
      end

    end

  end
end