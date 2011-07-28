require 'faraday'
require 'faraday_middleware'
require 'core_ext/array'
require 'yajl'

module Soundcloud
  class Client
    attr_reader :api_key, :conn

    # Initialize the client.
    # TODO:  Document.
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

    def method_missing(sym, *args, &block)
      options = args.extract_options!.merge(:client_id => api_key)
      response = conn.get("/v2/#{sym.to_s}/#{args[0]}") { |req| req.params = options  }
      args[0].nil? ? response.body.send(sym) : response.body.send(sym.to_s.chop)
    end
  end
end
