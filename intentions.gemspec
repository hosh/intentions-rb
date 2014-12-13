# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'intentions/version'

Gem::Specification.new do |spec|
  spec.name          = "intentions"
  spec.version       = Intentions::VERSION
  spec.authors       = ["Ho-Sheng Hsiao"]
  spec.email         = ["talktohosh@gmail.com"]
  spec.summary       = %q{Promise Theory library}
  spec.description   = %q{General Promise THeory Library}
  spec.homepage      = ""
  spec.license       = "GPLv2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rlet", "~> 0.5"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "pry", "~> 0.10"
end
