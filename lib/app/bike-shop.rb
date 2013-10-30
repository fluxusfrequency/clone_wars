require 'sinatra/base'

module Sinatra
  module BikeShop

    def self.registered(app)
      app.get '/bike-shop/retail' do
        url = '/bike-shop/retail'
        body = PageStore.find_by_url(url).body
      end

      app.get '/bike-shop/service' do
        url = '/bike-shop/service'
                title = PageStore.find_by_url(url).title
      end

      app.get '/bike-shop/xtracycle' do
        url = '/bike-shop/xtracycle'
                erb :Show, locals: {url: url, body: body, title: title}
      end
    end
    
  end
  register BikeShop
end
