# urginfo Gemfile
source 'http://rubygems.org'

gem 'rails', '3.0.3'

gem "haml"
gem "RedCloth"
gem "meta_where"
gem "meta_search"
gem "simple_form"
gem 'will_paginate', '3.0.pre2'
gem 'ancestry'
gem 'state_machine'
gem 'has_many_polymorphs', :git => 'http://github.com/jystewart/has_many_polymorphs.git'
gem 'nested_form', :git =>  "https://github.com/madebydna/nested_form.git"

gem 'pg', :group => :production

group :development do
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem "nifty-generators"
  gem "rails3-generators"
  gem "haml-rails"
  gem "wirble"
  gem "hirb"
  gem 'annotate-models', '1.0.4'
end

group :development, :test do
  gem 'rspec-rails', "~> 2.1"
end

group :test do
  gem 'factory_girl_rails', "~> 1.1.beta1"
  gem 'spork', '0.9.0.rc2'
end

group :cucumber do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'cucumber'
  gem 'rspec-rails', "~> 2.1"
  gem 'spork', '0.9.0.rc2'
  gem 'launchy'    # So you can do Then show me the page
  gem 'pickle'
  gem 'factory_girl_rails', "~> 1.1.beta1"
end
