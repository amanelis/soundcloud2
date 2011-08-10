module Soundcloud
  class Tracks < Client
    attr_reader :api_key, :conn

    # Initialize on the Soundcloud::Client class
    def initialize(*args)
      super
    end

  end
end