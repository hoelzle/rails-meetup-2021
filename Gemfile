source 'https://rubygems.org'

ruby File.read('.ruby-version')

gem 'pg'
gem 'puma'
gem 'rails'

group :development, :test do
  gem 'byebug'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  gem 'listen'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'simplecov', require: false
  gem 'core', path: './engines/core'
  gem 'capybara'
  gem 'webdrivers'
end

gem 'core', path: './engines/core'
gem 'api', path: './engines/api'
