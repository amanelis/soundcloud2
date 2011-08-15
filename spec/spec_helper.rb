require 'simplecov'

SimpleCov.start do
  add_group 'Soundcloud', 'lib/soundcloud2'
  add_group 'Specs', 'spec'
end

require File.expand_path('../../lib/soundcloud2', __FILE__)
require 'rubygems'
require 'rspec'
require 'vcr'

API_KEY = "734a173874da8c420aeb59fd03623454"
