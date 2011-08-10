require 'faraday'
require 'faraday_middleware'
require 'core_ext/array'
require 'yajl'

module Soundcloud
  class Users < Client
    attr_reader :api_key, :conn

    # Initialize on the Soundcloud::Client class
    def initialize(*args)
      super
    end
    
    # GET	/users/{id}	a user
    def user(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/tracks	list of tracks of the user
    def user_tracks(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/tracks.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/playlists	list of playlists (sets) of the user
    def user_playlists(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/playlists.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/followings	a users followings
    # GET	/users/{id}/followings/{id}	a user who is followed by the user
    def user_followings(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/users/#{args[0]}/followings.json") { |req| req.params = options }) : (response = conn.get("/users/#{args[0]}/followings/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/followers	a users followers
    # GET	/users/{id}/followers/{id}	user who is following the user
    def user_followers(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/users/#{args[0]}/followers.json") { |req| req.params = options }) : (response = conn.get("/users/#{args[0]}/followers/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/comments	list of comments from this user
    def user_comments(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/comments.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/favorites	users favorites
    # GET	/users/{id}/favorites/{id}	track favorited by the user
    def user_favorites(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/users/#{args[0]}/favorites.json") { |req| req.params = options }) : (response = conn.get("/users/#{args[0]}/favorites/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/groups	list of joined groups
    def user_groups(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/groups.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end

  end
end