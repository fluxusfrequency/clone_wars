require 'sinatra/base'

module Sinatra
  module BikeShop 

    def self.registered(app)
      app.get '/bike-shop/retail' do
        erb :Retail
      end

      app.get '/bike-shop/service' do
        erb :ServiceMenu
      end

      app.get '/bike-shop/xtracycle' do
        erb :Xtracycle
      end
    end
  end
  register BikeShop
end
