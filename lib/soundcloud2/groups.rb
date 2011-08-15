module Soundcloud2
  class Groups < Client
    attr_reader :api_key, :conn

    # Initialize on the Soundcloud::Client class
    def initialize(*args)
      super
    end
    
    # GET	/groups/{id}	a group
    def groups(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/groups/#{args[0]}.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/groups/{id}/moderators	list of users who moderate the group
    def groups_moderators(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/groups/#{args[0]}/moderators.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/groups/{id}/members	list of users who joined the group
    def groups_members(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/groups/#{args[0]}/members.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/groups/{id}/contributors	list of users who contributed a track to the group
    def groups_contributors(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/groups/#{args[0]}/contributors.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/groups/{id}/users	list of users who contributed to, joined or moderate the group
    def groups_users(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/groups/#{args[0]}/users.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/groups/{id}/tracks	list of contributed and approved tracks
    def groups_tracks(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/groups/#{args[0]}/tracks.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
  end
end