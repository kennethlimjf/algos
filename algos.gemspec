# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'algos/version'

Gem::Specification.new do |spec|
  spec.name          = "algos"
  spec.version       = Algos::VERSION
  spec.authors       = ["Kenneth Lim"]
  spec.email         = ["kennethlimjf@gmail.com"]
  spec.summary       = %q{This is a library of common algorithms implemented in Ruby language.}
  spec.description   = %q{This is a library of common algorithms implemented in Ruby language. It contains mergesort.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
