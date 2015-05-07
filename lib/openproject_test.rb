require 'thor'
require 'thor/group'

case ARGV.first
when '-v', '--version'
  puts "OpenProject Test, v#{OpenprojectTest::VERSION}"
when 'install'
else
  puts 'try "install"!'
end
