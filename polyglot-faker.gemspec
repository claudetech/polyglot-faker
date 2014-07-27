# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'polyglot_faker/version'

Gem::Specification.new do |spec|
  spec.name          = "polyglot_faker"
  spec.version       = PolyglotFaker::VERSION
  spec.authors       = ["Daniel Perez"]
  spec.email         = ["tuvistavie@gmail.com"]
  spec.summary       = "Simplify Faker usage with languages using non-ascii characters."
  spec.homepage      = "https://github.com/claudetech/polyglot-faker"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "coveralls", "~> 0.7"

  spec.add_dependency "faker", "~> 1.4"
end
