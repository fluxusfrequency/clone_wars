require 'sinatra/base'

module Sinatra
  module BasicRoutes

    def self.registered(app)
      app.get '/about' do
        url = '/about'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/programs' do
        url = '/programs'
        erb :Programs, locals: {url: url}
      end

      app.get '/bike-shop' do
        url = '/bike-shop'
        erb :BikeShop, locals: {url: url}
      end

      app.get '/support' do
        url = '/support'
        erb :Support, locals: {url: url}
      end

      app.get '/events' do
        url = '/events'
        erb :Events, locals: {url: url}
      end

      app.get '/links' do
        url = '/links'
        erb :Links, locals: {url: url}
      end
    end

  end
  register BasicRoutes
end
