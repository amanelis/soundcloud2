require 'faraday'
require 'faraday_middleware'
require 'core_ext/array'
require 'yajl'

module Soundcloud
  class Users < Client
    attr_reader :api_key, :conn

    def initialize(*args)
      super
    end
    
    def user(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    def user_tracks(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/tracks.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    def user_playlists(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/playlists.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    def user_followings(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/users/#{args[0]}/followings.json") { |req| req.params = options }) : (response = conn.get("/users/#{args[0]}/followings/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    def user_followers(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/users/#{args[0]}/followers.json") { |req| req.params = options }) : (response = conn.get("/users/#{args[0]}/followers/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    def user_comments(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/comments.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    def user_favorites(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/users/#{args[0]}/favorites.json") { |req| req.params = options }) : (response = conn.get("/users/#{args[0]}/favorites/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    def user_groups(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/groups.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end

  end
end