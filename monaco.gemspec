# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'monaco/version'

Gem::Specification.new do |spec|
  spec.name          = "monaco"
  spec.version       = Monaco::VERSION
  spec.authors       = ["Rob Miller"]
  spec.email         = ["rob@bigfish.co.uk"]

  spec.summary       = %q{Performs Monte Carlo simulations}
  spec.description   = %q{A small library for easily performing Monte Carlo simulations}
  spec.homepage      = "https://github.com/robmiller/monaco"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
