module Sinatra
  module BikeShop 

    def self.registered(app)
      self.get '/bike-shop/retail' do
        slim :Retail
      end

      self.get '/bike-shop/service' do
        slim :ServiceMenu
      end

      self.get '/bike-shop/xtracycle' do
        slim :Xtracycle
      end
    end
  end
  register BikeShop
end
