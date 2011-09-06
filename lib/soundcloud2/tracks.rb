module Soundcloud2
  class Tracks < Client
    attr_reader :api_key, :conn

    # Initialize on the Soundcloud::Client class
    def initialize(*args)
      super
    end
    
    # GET	/tracks/{id}	a user
    def tracks(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/tracks/#{args[0]}.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/tracks/{id}/comments	comments for the track
    # GET	/tracks/{id}/comments/{comment-id}	a comment for the track
    def tracks_comments(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/tracks/#{args[0]}/comments.json") { |req| req.params = options }
      args[1].nil? ? (response = conn.get("/tracks/#{args[0]}/comments.json") { |req| req.params = options }) : (response = conn.get("/tracks/#{args[0]}/comments/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/tracks/{id}/favoriters	users who favorited the track
    # GET	/tracks/{id}/favoriters/{user-id}	a user who has favorited to the track
    def tracks_favoriters(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/tracks/#{args[0]}/favoriters.json") { |req| req.params = options }) : (response = conn.get("/tracks/#{args[0]}/favoriters/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET /tracks/{id}/secret-token	secret token of the track
    def tracks_secret_token(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/tracks/#{args[0]}/secret-token.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
  end
end