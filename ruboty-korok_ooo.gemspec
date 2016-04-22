# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/korok_ooo/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-korok_ooo"
  spec.version       = Ruboty::KorokOoo::VERSION
  spec.authors       = ["No6Kitsunegasaki\n\n"]
  spec.email         = ["none.gingerale@gmail.com\n\n"]

  spec.summary       = %q{Taka! Tora! Batta!}
  spec.description   = %q{A kawaii fox changes form by your medals.}
  spec.homepage      = "https://github.com/No6Kitsunegasaki/ruboty-korok_ooo"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
