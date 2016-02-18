# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "forem-redcarpet"
  s.version     = "1.0.3"
  s.authors     = ["Ryan Bigg"]
  s.email       = ["radarlistener@gmail.com"]
  s.homepage    = "https://github.com/radar/forem-redcarpet"
  s.summary     = %q{Provides Redcarpet markup (with syntax highlighting by pygments.rb) for Forem posts}
  s.description = %q{Provides Redcarpet markup (with syntax highlighting by pygments.rb) for Forem posts}

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'nokogiri', '~>1.6'
  s.add_runtime_dependency 'redcarpet', '~>3.3'
  s.add_runtime_dependency 'pygments.rb', '~>0.6'
end
