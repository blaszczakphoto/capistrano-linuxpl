# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/linuxpl/version'

Gem::Specification.new do |spec|
  spec.name = 'capistrano-linuxpl'
  spec.version = Capistrano::Linuxpl::VERSION
  spec.authors = ['Mariusz Błaszczak']
  spec.email = ['mariusz.blaszczak@gmail.com']
  spec.description = %q{Linuxpl server integration for Capistrano}
  spec.summary = %q{Linuxpl integration for Capistrano}
  spec.homepage = 'https://github.com/blaszczakphoto/capistrano-linuxpl'
  spec.license = 'MIT'

  spec.required_ruby_version     = '>= 2.4.1'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_dependency 'capistrano', '~> 3.6'
  spec.add_development_dependency 'rake'
end
