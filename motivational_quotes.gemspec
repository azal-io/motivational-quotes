# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'motivational_quotes/version'

Gem::Specification.new do |spec|
  spec.name          = "motivational_quotes"
  spec.version       = MotivationalQuotes::VERSION
  spec.authors       = ["Azar Aliyev"]
  spec.email         = ["azar.aliyev@outlook.com"]

  spec.summary       = %q{Provides 1500+ motivational quotes}
  spec.description   = %q{The Gem will give you access to 1500+ motivational quotes.}
  spec.homepage      = "https://azal.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
