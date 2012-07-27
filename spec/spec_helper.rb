require 'rubygems'
require 'rspec'
require 'simplecov'
require File.expand_path('../../lib/soundcloud2', __FILE__)

SimpleCov.start do
  add_group 'Soundcloud2', 'lib/soundcloud2'
  add_group 'Specs', 'spec'
end

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
end

API_KEY = "734a173874da8c420aeb59fd03623454"
