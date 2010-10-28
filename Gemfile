# urginfo Gemfile
source 'http://rubygems.org'

gem 'rails', '3.0.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem "haml"
gem "RedCloth"
gem "meta_search"
gem "meta_where"
gem "simple_form"
gem 'will_paginate', '3.0.pre2'
gem 'ancestry'
gem 'state_machine'

gem 'pg', :group => :production

unless ENV.has_key?('SSH_CLIENT')
  group :development do
    gem 'sqlite3-ruby', :require => 'sqlite3'
    gem "nifty-generators"
    gem "rails3-generators"
    gem "haml-rails"
    gem "wirble"
    gem "hirb"
    gem 'annotate-models', '1.0.4'
    gem "wirble"
    gem "hirb"
    gem "heroku"
    gem "taps"
  end

  group :development, :test do
    gem 'rspec-rails', ">= 2.0.1"
  end

  group :test do
    gem 'factory_girl_rails'
    gem 'spork'
  end

  group :cucumber do
    gem 'capybara'
    gem 'database_cleaner'
    gem 'cucumber-rails'
    gem 'cucumber'
    gem 'rspec-rails', ">= 2.0.1"
    gem 'spork'
    gem 'launchy'    # So you can do Then show me the page
    gem 'pickle'
    gem 'factory_girl_rails'
  end
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end