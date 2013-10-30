require 'sinatra/base'

module Sinatra
  module BikeShop

    def self.registered(app)
      app.get '/bike-shop/retail' do
        url = '/bike-shop/retail'
        erb :Retail, locals: {url: url}
      end

      app.get '/bike-shop/service' do
        url = '/bike-shop/service'
        erb :ServiceMenu, locals: {url: url}
      end

      app.get '/bike-shop/xtracycle' do
        url = '/bike-shop/xtracycle'
        erb :Xtracycle, locals: {url: url}
      end
    end
  end
  register BikeShop
end
