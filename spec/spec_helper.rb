require 'spork'

Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.
  require 'rspec'
  require 'simplecov'

  ENV["RAILS_ENV"] ||= 'test'
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
end

Spork.each_run do
  # This code will be run each time you run your specs.
end
