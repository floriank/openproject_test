require 'thor'
require 'thor/group'

case ARGV.first
when '-v', '--version'
  puts "OpenProject Test, v#{OpenprojectTest::VERSION}"
when 'install'
  require 'openproject_test/installer'
  OpenprojectTest::Installer.start
else
  puts 'try "install"!'
end
