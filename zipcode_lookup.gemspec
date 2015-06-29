# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zipcode_lookup/version'

Gem::Specification.new do |spec|
  spec.name          = "zipcode_lookup"
  spec.version       = ZipcodeLookup::VERSION
  spec.authors       = ["Abhijit Sinha"]
  spec.email         = ["abhijit.sinha@kiprosh.com"]

  spec.summary       = %q{Gem to fetch geo details via zipcode}
  spec.description   = %q{This gem uses the ziptastic api and google api to fetch the geo details via zipcode}
  spec.homepage      = "https://github.com/abhijitsinha/zipcode_lookup"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
