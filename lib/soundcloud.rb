require 'faraday'
require 'faraday_middleware'
require 'core_ext/array'
require 'yajl'

module Soundcloud
  class Client
    attr_reader :api_key, :conn

    def initialize(*args)
      options = args.extract_options!
      @api_key = args[0]
      @conn = Faraday.new(:url => "https://api.soundcloud.com/") do |builder|
        builder.adapter Faraday.default_adapter
        builder.adapter  :logger if options[:debug] == true
        builder.use Faraday::Response::ParseJson
        builder.use Faraday::Response::Mashify
      end
    end
    
    def tracks(*args)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/tracks.json") { |req| req.params = options }
      args[0].nil? ? response : nil
    end

    def method_missing(sym, *args, &block)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("#{sym.to_s}.json?") { |req| req.params = options  }
      args[0].nil? ? response.body.send(sym) : response.body.send(sym.to_s.chop)
    end
  end
end
