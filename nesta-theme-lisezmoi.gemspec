# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nesta-theme-lisezmoi/version'

Gem::Specification.new do |spec|
  spec.name          = "nesta-theme-lisezmoi"
  spec.version       = Nesta::Theme::Lisezmoi::VERSION
  spec.authors       = ["Glenn Gillen"]
  spec.email         = ["me@glenngillen.com"]
  spec.summary       = %q{A technical documentation theme for NestaCMS.}
  spec.homepage      = "https://contentfocus.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "nesta"
  spec.add_runtime_dependency "nesta-contentfocus-extensions"
  spec.add_runtime_dependency "bourbon"
  spec.add_runtime_dependency "neat"
end
