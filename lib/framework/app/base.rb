require 'sinatra/base'
require 'mustermann'
require 'sequel'
require 'dotenv'

module Framework
  class Base < Sinatra::Base
    register Mustermann

    error NotImplementedError do
      content_type :text
      status 501
      "This has not been implemented yet"
    end

    error JSON::ParserError do
      status 400
      "Invalid JSON in request body"
    end

    configure do
      set :views, Proc.new {Framework::Config.view_path}

      disable :protection, :logging, :setup
      enable :raise_errors
      disable :dump_errors
    end

    configure :development do
      register Sinatra::Reloader
      Dotenv.load
      Sequel.connect(ENV['DATABASE'])
      enable :logging
      set :show_exceptions, :after_handler
      enable :dump_errors
    end

    configure :production do
      enable :protection
    end

  end
end
