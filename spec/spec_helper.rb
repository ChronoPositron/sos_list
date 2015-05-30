# Volt sets up rspec and capybara for testing.
require 'volt/spec/setup'
Volt.spec_setup

# Load simplecov and let it load options from .simplecov
require 'simplecov'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  # Include support for FactoryGirl
  config.include FactoryGirl::Syntax::Methods
  config.before(:suite) do
      # Check the factories
      FactoryGirl.lint
  end

  # We need to explicity tell FactoryGirl to find the definitions
  FactoryGirl.find_definitions
end
