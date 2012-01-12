# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "forem-redcarpet"
  s.version     = "1.0.0"
  s.authors     = ["Ryan Bigg"]
  s.email       = ["radarlistener@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Provides Redcarpet markup (with syntax highlighting by pygments.rb) for Forem posts}
  s.description = %q{Provides Recarpet markup (with syntax highlighting by pygments.rb) for Forem posts}

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency 'redcarpet', '2.0.1'
  s.add_dependency 'pygments.rb', '0.2.4'
end
