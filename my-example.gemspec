# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "my-example"

Gem::Specification.new do |s|
  s.name        = "my-example"
  s.version     = My::Example::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michael Klein"]
  s.email       = ["mbklein@stanford.edu"]
  s.summary     = "Bundler/Rcov Demonstration"
  s.description = "Contains a minimal demonstration of a bug in bundle exec rcov"
  
  s.required_rubygems_version = ">= 1.3.6"

  s.add_development_dependency "rcov"
  s.add_development_dependency "rspec", "< 2.0" # We're not ready to upgrade to rspec 2
 
  s.files        = Dir['lib/*.rb'] + Dir['lib/**/*.rb']
  s.require_path = 'lib'
end