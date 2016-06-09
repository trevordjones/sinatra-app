require 'rack/test'
require 'rspec'
require 'pry'
require 'dotenv'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../lib/framework/app', __FILE__
Dotenv.load
Sequel.connect(ENV['TEST_DATABASE'])
module RSpecMixin
  include Rack::Test::Methods
  def app() Framework::App end
end

RSpec.configure { |c| c.include RSpecMixin }
