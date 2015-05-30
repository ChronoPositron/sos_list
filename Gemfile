source 'https://rubygems.org'

gem 'volt', '~> 0.9.3.pre2'

# The following gem's are optional for themeing
# Twitter bootstrap
gem 'volt-bootstrap', '~> 0.0.10'

# Simple theme for bootstrap, remove to theme yourself.
gem 'volt-bootstrap_jumbotron_theme', '~> 0.1.0'

# User templates for login, signup, and logout menu.
gem 'volt-user_templates', '~> 0.2.0'

# Add ability to send e-mail from apps.
gem 'volt-mailer', '~> 0.0.2'

# Add for field validations.
gem 'volt-fields'

# MongoDB for Volt.
gem 'volt-mongo'

# Use rbnacl for message bus encrpytion
# (optional, if you don't need encryption, disable in app.rb and remove)
gem 'rbnacl', require: false
gem 'rbnacl-libsodium', require: false

# Asset compilation gems, they will be required when needed.
gem 'csso-rails', '~> 0.3.4', require: false
gem 'uglifier', '>= 2.4.0', require: false

group :test do
  # Testing dependencies
  gem 'rspec', '~> 3.2.0'
  gem 'opal-rspec', '~> 0.4.2'
  gem 'capybara', '~> 2.4.2'
  gem 'selenium-webdriver', '~> 2.43.0'
  gem 'chromedriver2-helper', '~> 0.0.8'
  gem 'poltergeist', '~> 1.5.0'
  gem 'factory_girl', '~> 4.5.0'
  gem 'codecov', '~> 0.0.8', :require => false
  gem 'simplecov', '~> 0.10.0'
  gem 'codeclimate-test-reporter', '~> 0.4.7'
end

# Server for MRI
platform :mri do
  # The implementation of ReadWriteLock in Volt uses concurrent ruby and ext helps performance.
  gem 'concurrent-ruby-ext', '~> 0.8.0'
  gem 'thin', '~> 1.6.0'
  gem 'bson_ext', '~> 1.9.0'
end
