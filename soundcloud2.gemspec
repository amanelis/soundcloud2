# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'soundcloud2/version'

Gem::Specification.new do |s|
  s.name        = 'soundcloud2'
  s.version     = Soundcloud2::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Alex Manelis']
  s.email       = ['amanelis@console.fm']
  s.homepage    = 'http://github.com/amanelis/soundcloud2'
  s.summary     = %q{A wrapper for the Soundcloud API}
  s.description = %q{A wrapper for the Soundcloud API}

  s.rubyforge_project = 'soundcloud2'
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
  s.add_development_dependency('simplecov')
  s.add_development_dependency('yard')
  s.add_development_dependency('maruku')
  
  s.add_runtime_dependency('faraday')
  s.add_runtime_dependency('faraday_middleware')
  s.add_runtime_dependency('hashie')
  s.add_runtime_dependency('yajl-ruby')
  s.add_runtime_dependency('multi_json')
  

  s.files         = `git ls-files`.split('\n')
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')
  s.executables   = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end