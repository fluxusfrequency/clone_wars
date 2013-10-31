module Sinatra
  module Program

    def self.registered(app)

      app.get '/programs/earn-a-bike' do
        url = '/programs/earn-a-bike'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/programs/fix-your-bike' do
        url = '/programs/fix-your-bike' 
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/programs/classes' do
        url = '/programs/classes'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/programs/bike-camp' do
        url = '/programs/bike-camp'
        erb :BikeCamp, locals: {url: url}
      end

      app.get '/programs/bike-rodeo' do
        url = '/programs/bike-rodeo'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end
      
    end
  end
  register Program
end
