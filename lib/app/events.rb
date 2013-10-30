require 'sinatra/base'

module Sinatra
  module Events

    def self.registered(app)

      app.get '/events/calendar' do
        url = '/events/calendar'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/events/park-hill-family-bike-ride' do
        url = '/events/park-hill-family-bike-ride'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end
    #---end of "events" dropdown
    end
  end
  register Events
end
