require 'faraday'
require 'faraday_middleware'
require 'core_ext/array'
require 'yajl'

module Soundcloud2
  class Client
    attr_reader :api_key, :conn

    def initialize(*args)
      options = args.extract_options!
      @api_key = args[0]
      @conn = Faraday.new(:url => "https://api.soundcloud.com/") do |builder|
        builder.use Faraday::Response::Mashify
        builder.use Faraday::Response::ParseJson
        builder.adapter Faraday.default_adapter
      end
    end

    # PROPERTIES OF GROUPS API
    # id	integer ID	123
    # uri	API resource URL	http://api.soundcloud.com/comments/32562
    # created_at	timestamp of creation	"2009/08/13 18:30:10 +0000"
    # permalink	permalink of the resource	"summer-of-69"
    # permalink_url	URL to the SoundCloud.com page	"http://soundcloud.com/bryan/summer-of-69"
    # artwork_url	URL to a JPEG image	"http://i1.sndcdn.com/a....-large.jpg?142a848"
    # name	name of the group	"Field Recordings"
    # description	description of the group	"field recordings from across the world"
    # short_description	short description of the group	"field recordings!"
    # creator	mini user representation of the owner	{id: 343, username: "Doctor Wilson"...}
    def groups(*args)
      super
    end

    # PROPERTIES OF PLAYLISTS API
    # id	integer ID	123
    # created_at	timestamp of creation	"2009/08/13 18:30:10 +0000"
    # user-id	user-id of the owner	343
    # user	mini user representation of the owner	{id: 343, username: "Doctor Wilson"...}
    # title	track title	"Summer of 69"
    # permalink	permalink of the resource	"summer-of-69"
    # permalink_url	URL to the SoundCloud.com page	"http://soundcloud.com/bryan/summer-of-69"
    # uri	API resource URL	"http://api.soundcloud.com/tracks/123"
    # sharing	public/private sharing	"public"
    # purchase_url	external purchase link	"http://amazon.com/buy/a43aj0b03"
    # artwork_url	URL to a JPEG image	"http://i1.sndcdn.com/a....-large.jpg?142a848"
    # description	HTML description	"my first track"
    # downloadable	downloadable (boolean)	false
    # streamable	streamable via API (boolean)	true
    # label	label mini user object	{id:123, username: "BeatLabel"...}
    # duration	duration in milliseconds	1203400
    # genre	genre	"HipHop"
    # shared_to_count	number of sharings (if private)	45
    # tag_list	list of tags	"tag1 \"hip hop\" geo:lat=32.444 geo:lon=55.33"
    # label_id	id of the label user	54677
    # label_name	label name	"BeatLabel"
    # license	creative common license	"no-rights-reserved"
    # release	release number	3234
    # release_day	day of the release	21
    # release_month	month of the release	5
    # release_year	year of the release	2001
    # ean	EAN identifier for the playlist	"123-4354345-43"
    # playlist_type	playlist type	"recording"
    def playlists(*args)
      super
    end

    # PROPERTIES OF TRACKS API
    # id	integer ID	123
    # created_at	timestamp of creation	"2009/08/13 18:30:10 +0000"
    # user-id	user-id of the owner	343
    # user	mini user representation of the owner	{id: 343, username: "Doctor Wilson"...}
    # title	track title	"Summer of 69"
    # permalink	permalink of the resource	"summer-of-69"
    # permalink_url	URL to the SoundCloud.com page	"http://soundcloud.com/bryan/summer-of-69"
    # uri	API resource URL	"http://api.soundcloud.com/tracks/123"
    # sharing	public/private sharing	"public"
    # purchase_url	external purchase link	"http://amazon.com/buy/a43aj0b03"
    # artwork_url	URL to a JPEG image	"http://i1.sndcdn.com/a....-large.jpg?142a848"
    # description	HTML description	"my first track"
    # downloadable	downloadable (boolean)	false
    # streamable	streamable via API (boolean)	true
    # label	label mini user object	{id:123, username: "BeatLabel"...}
    # duration	duration in milliseconds	1203400
    # genre	genre	"HipHop"
    # shared_to_count	number of sharings (if private)	45
    # tag_list	list of tags	"tag1 \"hip hop\" geo:lat=32.444 geo:lon=55.33"
    # label_id	id of the label user	54677
    # label_name	label name	"BeatLabel"
    # license	creative common license	"no-rights-reserved"
    # release	release number	3234
    # release_day	day of the release	21
    # release_month	month of the release	5
    # release_year	year of the release	2001
    # state	encoding state	"finished"
    # track_type	track type	"recording"
    # waveform_url	URL to PNG waveform image	"http://w1.sndcdn.com/fxguEjG4ax6B_m.png"
    # download_url	URL to original file	"http://api.soundcloud.com/tracks/3/download"
    # stream_url	link to 128kbs mp3 stream	"http://api.soundcloud.com/tracks/3/stream"
    # bpm	beats per minute	120
    # commentable	track commentable (boolean)	true
    # isrc	track ISRC	"I123-545454"
    # key_signature	track key	"Cmaj"
    # comment_count	track comment count	12
    # download_count	track download count	45
    # playback_count	track play count	435
    # favoritings_count	track favoriting count	6
    # original_format	file format of the original file	"aiff"
    # created_with	the app that the track created	{"id"=>3434, "..."=>nil}
    # asset_data	binary data of the audio file	(only for uploading)
    # artwork_data	binary data of the artwork image	(only for uploading)
    # user_favorite	track favorite of current user (boolean, authenticated requests only)	1
    def tracks(*args)
      super
    end

    # PROPERTIES OF USERS API
    # id	integer ID	123
    # permalink	permalink of the resource	"summer-of-69"
    # username	username	"Doctor Wilson"
    # uri	API resource URL	http://api.soundcloud.com/comments/32562
    # permalink_url	URL to the SoundCloud.com page	"http://soundcloud.com/bryan/summer-of-69"
    # avatar_url	URL to a JPEG image	"http://i1.sndcdn.com/a....-large.jpg?142a848"
    # country	country	"Germany"
    # full_name	first and last name	"Tom Wilson"
    # city	city	"Berlin"
    # description	description	"Another brick in the wall"
    # discogs-name	Discogs name	"myrandomband"
    # myspace-name	MySpace name	"myrandomband"
    # website	a URL to the website	"http://facebook.com/myrandomband"
    # website-title	a custom title for the website	"myrandomband on Facebook"
    # online	online status (boolean)	true
    # track_count	number of public tracks	4
    # playlist_count	number of public playlists	5
    # followers_count	number of followers	54
    # followings_count	number of followed users	75
    # public_favorites_count	number of favorited public tracks	7
    def users(*args)
      super
    end

    def method_missing(sym, *args, &block)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/#{sym.to_s}.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
  end

  autoload :Comments,   "soundcloud2/comments"
  autoload :Groups,     "soundcloud2/groups"
  autoload :Playlists,  "soundcloud2/playlists"
  autoload :Tracks,     "soundcloud2/tracks"
  autoload :Users,      "soundcloud2/users"
end
