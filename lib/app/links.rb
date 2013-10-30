require 'sinatra/base'

module Sinatra
  module Links

    def self.registered(app)

      app.get '/links/business-partners' do
        url = '/links/business-partners'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/links/friends' do
        url = '/links/friends'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/links/we-love' do
        url = '/links/we-love'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

#--- end "Links" dropdown
    end
  end
  register Links
end
