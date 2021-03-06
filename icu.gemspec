require File.expand_path('../lib/icu/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "icu"
  s.version     = ICU::VERSION
  s.authors     = ["Erick Guan"]
  s.email       = ["fantasticfears@gmail.com"]
  s.license     = "MIT"
  s.homepage    = "https://github.com/fantasticfears/icu4r"
  s.summary     = %q{A Unicode processing functions ruby gem, binding to ICU}
  s.required_ruby_version = '>= 2.2.7'

  s.extensions    = ["ext/icu/extconf.rb"]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_development_dependency 'rake-compiler', ">= 0.7.5"
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'mini_portile2', '~> 2.2.0'
end
