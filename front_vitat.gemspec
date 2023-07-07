lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'FrontVitat/version'

Gem::Specification.new do |s|
  s.name     = 'front_vitat'
  s.version  = FrontVitat::VERSION
  s.authors = ["AmandavrVitat"]
  s.email = ["amanda.rocha@vitat.com.br"]
  s.summary = "front vitat"
  s.description = "front vitat"
  s.homepage = "https://github.com/sejavitat/front_vitat"

  # SassC requires Ruby 2.3.3. Also specify here to make it obvious.
  s.required_ruby_version = '>= 2.3.3'

  s.add_runtime_dependency 'popper_js', '>= 2.11.7', '< 3'

  s.add_runtime_dependency 'sassc-rails', '>= 2.0.0'
  s.add_runtime_dependency 'autoprefixer-rails', '>= 9.1.0'

  # Testing dependencies
  s.add_development_dependency 'minitest', '~> 5.14.4'
  s.add_development_dependency 'minitest-reporters', '~> 1.4.3'
  s.add_development_dependency 'term-ansicolor'
  # Integration testing
  s.add_development_dependency 'capybara', '>= 2.6.0'
  s.add_development_dependency 'cuprite'
  # Dummy Rails app dependencies
  s.add_development_dependency 'actionpack', '>= 4.1.5'
  s.add_development_dependency 'activesupport', '>= 4.1.5'
  s.add_development_dependency 'json', '>= 1.8.1'
  s.add_development_dependency 'sprockets-rails', '>= 2.3.2'
  s.add_development_dependency 'uglifier'

  s.files      = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test/*`.split("\n")
end
