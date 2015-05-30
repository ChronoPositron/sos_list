require 'opal/rspec/rake_task'
require 'rspec/core/rake_task'

# Setup the opal:rspec task
# This runs the tests through opal and a browser, e.g. phantomjs
Opal::RSpec::RakeTask.new('opal:rspec') do |s|
  # Add the app folder to the opal load path.
  s.append_path('app')
end

# Setup the ruby:rspec task
RSpec::Core::RakeTask.new('ruby:rspec')

task default: ['ruby:rspec']