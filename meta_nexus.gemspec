# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meta_nexus/version'

Gem::Specification.new do |spec|
  spec.name          = 'meta_nexus'
  spec.version       = MetaNexus::VERSION
  spec.authors       = ['Freika']
  spec.email         = ['frey@list.ru']

  spec.summary       = 'Ruby Gem for accessing Battle.net web api.'
  spec.description   = 'With this gem you can get access to Blizzard\'s games web api.'
  spec.homepage      = 'https://github.com/Freika/meta_nexus'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'TODO: Set to "http://mygemserver.com"'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~>3.2'
  spec.add_development_dependency 'vcr', '~> 2.9', '>= 2.9.3'
  spec.add_development_dependency 'webmock', '~>1.21'
  spec.add_development_dependency 'dotenv', '~>2.0'
  spec.add_development_dependency 'codeclimate-test-reporter', '~>0'

  spec.add_runtime_dependency 'httparty', '~>0.13.5'
end
