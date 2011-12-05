# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "copa/version"

Gem::Specification.new do |s|
  s.name        = "copa"
  s.version     = Copa::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Duke"]
  s.email       = ["duke@uberduke.com"]
  s.homepage    = "https://github.com/emersonvinicius/copa"
  s.summary     = %q{API to copatransparente.org.br}
  s.description = %q{API in Ruby to acess data of copatransparente.org.br}

  s.rubyforge_project = "copa"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
