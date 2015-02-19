# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'touchy/version'

Gem::Specification.new do |spec|
  spec.name          = "touchy"
  spec.version       = touchy::VERSION
  spec.authors       = ["Masami Yonehara"]
  spec.email         = ["zeitdiebe@gmail.com"]
  spec.summary       = %q{the tool that find odd images}
  spec.description   = %q{the tool that find odd images}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.19"
  spec.add_dependency "fastimage"
  spec.add_dependency "rmagick"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
