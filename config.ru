# Make sure we set that before everything
ENV['RACK_ENV'] ||= ENV['RAILS_ENV'] || ENV['ENV']
ENV['RAILS_ENV']  = ENV['RACK_ENV']

$stdout.sync = true

require 'rubygems'
require 'bundler'

Bundler.require(:default, ENV["RACK_ENV"])

require 'framework/app'

run Framework::App
