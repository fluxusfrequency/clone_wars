require 'sinatra/base'

module Sinatra
  module BasicRoutes

    def self.registered(app)
      app.get '/about' do
        erb :About
      end

      app.get '/programs' do
        erb :Programs
      end

      app.get '/bike-shop' do
        erb :BikeShop
      end

      app.get '/support' do
        erb :Support
      end

      app.get '/events' do
        erb :Events
      end

      app.get '/links' do
        erb :Links
      end
    end
    
  end
  register BasicRoutes
end
