module Soundcloud2
  class Users < Client
    attr_reader :api_key, :conn

    # Initialize on the Soundcloud::Client class
    def initialize(*args)
      super
    end
    
    # GET	/users/{id}	a user
    def users(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/tracks	list of tracks of the user
    def users_tracks(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/tracks.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/playlists	list of playlists (sets) of the user
    def users_playlists(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/playlists.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/followings	a users followings
    # GET	/users/{id}/followings/{id}	a user who is followed by the user
    def users_followings(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/users/#{args[0]}/followings.json") { |req| req.params = options }) : (response = conn.get("/users/#{args[0]}/followings/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/followers	a users followers
    # GET	/users/{id}/followers/{id}	user who is following the user
    def users_followers(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/users/#{args[0]}/followers.json") { |req| req.params = options }) : (response = conn.get("/users/#{args[0]}/followers/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/comments	list of comments from this user
    def users_comments(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/comments.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/favorites	users favorites
    # GET	/users/{id}/favorites/{id}	track favorited by the user
    def users_favorites(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      args[1].nil? ? (response = conn.get("/users/#{args[0]}/favorites.json") { |req| req.params = options }) : (response = conn.get("/users/#{args[0]}/favorites/#{args[1]}.json") { |req| req.params = options })
      args.nil? ? response.body.send(sym) : response.body
    end
    
    # GET	/users/{id}/groups	list of joined groups
    def users_groups(*args)
			options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/users/#{args[0]}/groups.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end

		#def method_missing(sym, *args, &block)
		#	options 	= args.extrac_options!.merge(:client_id => api_key)
		#	method 		= sym.to_s.gsub(/_(.*)$/, '')
		#	action 		= sym.to_s.gsub(/^(.*)_/, '')
		#	param1 		= args[0]
		#	param2		= args.try(:[], 1).nil? ? ".json" : "/#{args[1]}.json" 
		#	
		#	response  = conn.get("/#{method}/#{param1}/#{action}#{param2}"
		#	args.nil? ? response.body.send(sym) : response.body			
		#end
    
		#def method_missing(sym, *args, &block)
    #  options = args.extract_options!.merge(:client_id => api_key)
    #  if sym.to_s == "users"
    #    response = conn.get("/users/#{args[0]}.json") { |req| req.params = options }
    #  elsif args[1].nil?
    #    response = conn.get("/users/#{args[0]}.json") { |req| req.params = options }
    #  else
    #    response = conn.get("/users/#{args[0]}/#{sym.to_s}/#{args[1]}.json") { |req| req.params = options }
    #  end
    #  args.nil? ? response.body.send(sym) : response.body
    #end
  end
end
