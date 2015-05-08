$:.push File.expand_path('../lib', __FILE__)

require 'openproject_test/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'openproject_test'
  s.version     = OpenprojectTest::VERSION
  s.authors     = ['Florian Kraft']
  s.email       = ['FlorianKraft@gmx.de']
  s.homepage    = 'https://github.com/floriank/openproject_test'
  s.summary     = 'OeenProject Test provides Test integration for OP plugins'
  s.description = %{OpenProject Test provides Test integration tasks and
                     generators for various purposes during plugin development
                    }.split.join ' '

  s.files = Dir['{bin,lib}/**/*'] + ['LICENSE.txt', 'Rakefile', 'README.md']

  s.bindir        = 'bin/'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.add_dependency 'rails', '~> 3.2.21'
  s.add_dependency 'rubocop', '~> 0.28'
  s.add_dependency 'thor', '~> 0.19'

  s.add_development_dependency 'rspec', '~> 3.2'
end
