# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'defacto/version'

Gem::Specification.new do |spec|
  spec.name          = "defacto"
  spec.version       = Defacto::VERSION
  spec.authors       = ["Jane S. Sebastian"]
  spec.email         = ["jane@betatetra.com"]

  spec.summary       = %q{In practice but not necessarily ordained by law}
  spec.description   = %q{In practice but not necessarily ordained by law}
  spec.homepage      = "https://github.com/careful-with-that-axe/defacto"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
