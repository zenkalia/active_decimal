# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_decimal/version'

Gem::Specification.new do |spec|
  spec.name          = "active_decimal"
  spec.version       = ActiveDecimal::VERSION
  spec.authors       = ["Mike Kendall"]
  spec.email         = ["zenkalia@gmail.com"]
  spec.description   = %q{Word-number mapping for human readable code}
  spec.summary       = %q{Word-number mapping for human readable code}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
