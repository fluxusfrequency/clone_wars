require 'sinatra/base'

module Sinatra
  module BikeShop 

    def self.registered(app)
      app.get '/bike-shop/retail' do
        slim :Retail
      end

      app.get '/bike-shop/service' do
        slim :ServiceMenu
      end

      app.get '/bike-shop/xtracycle' do
        slim :Xtracycle
      end
    end
  end
  register BikeShop
end
