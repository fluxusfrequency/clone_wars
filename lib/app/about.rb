module Sinatra
  module About

    def self.registered(app)
      app.get '/about/mission-vision-and-values' do
        url = '/about/mission-vision-and-values'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/history' do
        url = '/about/history'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/staff-board' do
        url = '/about/staff-board'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/staff-board/17-about/staff-board/38-james-pullen' do
        url = '/about/staff-board/17-about/staff-board/38-james-pullen'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/staff-board/17-about/staff-board/39-ryne-emory' do
        url = '/about/staff-board/17-about/staff-board/39-ryne-emory'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/staff-board/17-about/staff-board/44-morgan-matter' do
        url = '/about/staff-board/17-about/staff-board/44-morgan-matter'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/staff-board/17-about/staff-board/43-bill-davis' do
        url = '/about/staff-board/17-about/staff-board/43-bill-davis'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/staff-board/17-about/staff-board/42-mike-decker' do
        url = '/about/staff-board/17-about/staff-board/42-mike-decker'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/staff-board/17-about/staff-board/7-board' do
        url = '/about/staff-board/17-about/staff-board/7-board'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/contact' do
        url = '/about/contact'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/about/privacy-policy' do
        url = '/about/privacy-policy'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end
    end

  end
  register About
end
