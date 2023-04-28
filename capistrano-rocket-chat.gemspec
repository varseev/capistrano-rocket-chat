# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/rocket_chat/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-rocket-chat"
  spec.version       = Capistrano::Rocket::Chat::VERSION
  spec.authors       = ["Christoph Bajohr"]
  spec.email         = ["christoph@bajohr.org"]

  spec.summary       = "rocket.chat webhook gem for capistrano 3"
  spec.description   = "rocket.chat webhook gem for capistrano 3. For further information visit the github page: https://github.com/cbajohr/capistrano-rocket-chat"
  spec.homepage      = "https://github.com/cbajohr/capistrano-rocket-chat"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capistrano", ">= 3.1" 
  spec.add_dependency "httparty", "~> 0.21.0", ">= 0.21.0" 
  spec.add_development_dependency "rake", "~> 10.0", '>= 10.0.0'
end
