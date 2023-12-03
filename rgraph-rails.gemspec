# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rgraph-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "rgraph-rails"
  spec.version       = RgraphRails::VERSION
  spec.authors       = ["Daniel Griffin"]
  spec.email         = ["danielseangriffin@gmail.com"]
  spec.licenses      = ["GPL-3.0"]

  spec.summary       = %q{ The rgraph (http://www.rgraph.net/) interactive chart/graph library with the Rails asset pipeline. }
  spec.description   = %q{ The rgraph (http://www.rgraph.net/) interactive chart/graph library with the Rails asset pipeline. }
  spec.homepage      = "https://github.com/dsgriffin/rgraph-rails"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'railties', '~> 7.1', '>= 7.1.2'
  spec.add_development_dependency 'bundler', '~> 2.4', '>= 2.4.22'
  spec.add_development_dependency 'rake', '~> 13.1'
  spec.add_development_dependency 'rspec', '~> 3.12'
end
