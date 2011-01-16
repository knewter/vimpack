# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vimpack/version"

Gem::Specification.new do |s|
  s.name        = "vimpack"
  s.version     = Vimpack::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bram Swenson"]
  s.email       = ["bram@craniumisajar.com"]
  s.homepage    = ""
  s.summary     = %q{ Vim Script Package Manager }
  s.description = %q{ Vim Script Package Manager based on pathogen.vim by Tim Pope }

  s.rubyforge_project = "vimpack"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('thor')
  s.add_development_dependency('cucumber')
  s.add_development_dependency('rspec')
  s.add_development_dependency('aruba')
  s.add_development_dependency('autotest-standalone')
end
