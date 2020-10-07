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
end
