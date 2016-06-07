# A sample Gemfile
source "https://rubygems.org"
gemspec

gem 'mustermann'
gem 'sinatra', '~> 1.4', require: 'sinatra/base'
gem 'sinatra-contrib', require: 'sinatra/namespace'
gem 'sinatra-router'
gem 'rack-flash3', require: "rack/flash"
gem 'rack-protection'
gem 'slim', '~> 3.0'
gem 'sequel'
gem 'rack-ssl'
gem "rack_csrf",       require: "rack/csrf"
gem 'http'
gem 'oj'
gem 'lumberjack'
gem 'sass'
gem 'sprockets', '~> 3.0'

platform :ruby do
  gem 'tiny_tds', '~> 0.7'
end

group :development, :test do
  gem 'pry'
  gem 'dotenv'
  gem 'rake'
end

group :development do
  gem 'sinatra-contrib', require: 'sinatra/reloader'
  gem 'thin'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'factory_girl'
  gem 'database_cleaner'
end
