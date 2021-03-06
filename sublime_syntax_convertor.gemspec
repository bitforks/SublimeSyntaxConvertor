# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sublime_syntax_convertor/version'

Gem::Specification.new do |spec|
  spec.name          = 'sublime_syntax_convertor'
  spec.version       = SublimeSyntaxConvertor::VERSION
  spec.authors       = ['Allen Bargi']
  spec.email         = ['allen.bargi@gmail.com']
  spec.description   = 'Converts tmLanguage to sublime-syntax'
  spec.summary       = 'Converts tmLanguage to sublime-syntax'
  spec.homepage      = 'https://github.com/aziz/SublimeSyntaxConvertor'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'plist'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'rubycritic'
end
