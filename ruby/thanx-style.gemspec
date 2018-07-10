# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'thanx/style/version'

Gem::Specification.new do |s|
  s.name        = 'thanx-style'
  s.version     = Thanx::Style::VERSION
  s.authors     = ['Eng @ Thanx']
  s.email       = ['eng@thanx.com']

  s.summary     = 'Quick install of ruby Thanx code style rules'
  s.description = <<~DESC
    Provides Ruby, Rails, and RSpec rubocop rules. Also provides helpers for
    properly formatting CI output.
  DESC
  s.homepage    = 'https://github.com/thanx/style-guide'
  s.license     = 'MIT'

  s.files = Dir['lib/**/*', 'rubocop*.yml', '.danger/*']
  s.require_paths = ['lib']

  s.bindir = 'bin'
  s.executables = [
    'thanx-rspec',
    'thanx-report-rspec',
    'thanx-rubocop',
    'thanx-report-rubocop'
  ]

  # pull request formatting
  s.add_dependency 'danger', '~> 5.6.2'
  s.add_dependency 'danger-junit', '~> 0.7.4'
  s.add_dependency 'danger-rubocop_junit_parser', '~> 0.0.1'
  s.add_dependency 'danger-simplecov_json', '~> 0.3.0'
  # linting
  s.add_dependency 'rubocop', '~> 0.58.1'
  s.add_dependency 'rubocop-junit-formatter', '~> 0.1.4'
  s.add_dependency 'rubocop-rspec', '~> 1.27.0'
  # test formatting
  s.add_dependency 'rspec_junit_formatter', '~> 0.4.1'
  # code coverage
  s.add_dependency 'simplecov', '~> 0.16.1'
  s.add_dependency 'simplecov-json', '~> 0.2'
  s.add_dependency 'simplecov-lcov', '~> 0.7'

  s.add_development_dependency 'bundler', '~> 1.16'
end
