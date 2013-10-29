require 'sinatra/base'

module Sinatra
  module BasicRoutes

    def self.registered(app)
      app.get '/about' do
        slim :About
      end

      app.get '/programs' do
        slim :Programs
      end

      app.get '/bike-shop' do
        slim :BikeShop
      end

      app.get '/support' do
        slim :Support
      end

      app.get '/events' do
        slim :Events
      end

      app.get '/links' do
        slim :Links
      end
    end
  end
  register BasicRoutes
end
