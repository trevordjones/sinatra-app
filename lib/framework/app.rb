require 'framework/config'
require 'framework/app/base'
require 'rack/csrf'
require 'rack/flash'
require 'sinatra/router'
require 'sprockets'

require 'framework/app/endpoints/default'

module Framework
  App = Rack::Builder.new do
    cookie_settings = {
      key: 'framework-session',
      http_only: true,
      path: "/",
      expire_after: ENV.fetch("COOKIE_EXPIRE_AFTER", 2592000).to_i,
      secret: SecureRandom.hex(16),
    }

    use Rack::Session::Cookie , cookie_settings
    #use Rack::Session::Cookie
    #use Rack::SSL
    use Rack::Csrf, raise: true
    use Rack::Flash
    use Rack::Deflater

    map '/assets' do |app|
      environment = Sprockets::Environment.new
      environment.append_path 'assets/javascripts'
      environment.append_path 'assets/stylesheets'
      environment.append_path 'assets/images'
      environment.css_compressor = :scss

      environment.context_class.class_eval do
        def asset_path(path, options = {})
        end
      end

      run environment
    end


    run Sinatra::Router.new {
      #mount others
      run Default
    }
  end
end
