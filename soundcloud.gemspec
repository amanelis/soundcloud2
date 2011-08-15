# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "soundcloud/version"

Gem::Specification.new do |s|
  s.name        = "soundcloud2"
  s.version     = Soundcloud2::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Alex Manelis"]
  s.email       = ["amanelis@console.fm"]
  s.homepage    = "http://github.com/amanelis/soundcloud2"
  s.summary     = %q{A wrapper for the Soundcloud v2 API}
  s.description = %q{A wrapper for the Soundcloud v2 API}

  s.rubyforge_project = "soundcloud2"
  s.add_development_dependency('rake', '~> 0.8')
  s.add_development_dependency('rspec', '~> 2.5')
  s.add_development_dependency('simplecov', '~> 0.4')
  s.add_development_dependency('vcr', '~> 1.7.0')
  s.add_development_dependency('fakeweb')
  s.add_development_dependency('yard', '~> 0.6')
  s.add_development_dependency('maruku', '~> 0.6')
  s.add_runtime_dependency("faraday", '~> 0.7.4')
  s.add_runtime_dependency("faraday_middleware", '~> 0.7.0')
  s.add_runtime_dependency('hashie', '~> 1.1.0')
  s.add_runtime_dependency('yajl-ruby', '~> 0.8.1')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
