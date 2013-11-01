require 'sinatra/base'

module Sinatra
  module Support

    def self.registered(app)

      app.get '/support/volunteer' do
        url = '/support/volunteer'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/support/volunteer/21-new-volunteers' do
        url = '/support/volunteer/21-new-volunteers'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/support/donate-bikes' do
        url = '/support/donate-bikes'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/support/organizing-a-bike-collection-drive' do
        url = '/support/organizing-a-bike-collection-drive'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/support/memberships' do
        url = '/support/memberships'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/support/wish-list' do
        url = '/support/wish-list'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

    end
  end
  register Support
end
