module Soundcloud
  class Comments < Client
    attr_reader :api_key, :conn

    # Initialize on the Soundcloud::Client class
    def initialize(*args)
      super
    end
    
    # GET	/comments/{id}	a group
    def comments(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/comments/#{args[0]}.json") { |req| req.params = options }
      args.nil? ? response.body.send(sym) : response.body
    end

  end
end