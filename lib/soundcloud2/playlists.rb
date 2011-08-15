module Soundcloud2
  class Playlists < Client
    attr_reader :api_key, :conn

    # Initialize on the Soundcloud::Client class
    def initialize(*args)
      super
    end
    
    def playlists(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/playlists/#{args[0]}.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/playlists/{id}/shared-to/users	users who have access to the track
    def playlists_shared_to_users(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/playlists/#{args[0]}/shared-to/users.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/playlists/{id}/shared-to/emails	email addresses who are invited to the playlist
    def playlists_shared_to_emails(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/playlists/#{args[0]}/shared-to/emails.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end

  end
end