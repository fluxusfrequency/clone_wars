require 'sinatra/base'

module Sinatra
  module Links

    def self.registered(app)

      app.get '/links/business-partners' do
        url = '/links/business-partners'
        erb :BusinessPartners, locals: {url: url}
      end

      app.get '/links/friends' do
        url = '/links/friends'
        erb :Friends locals: {url: url}
      end

      app.get '/links/we-love' do
        url = '/links/we-love'
        erb :WeLove, locals: {url: url}
      end

#--- end "Links" dropdown
    end
  end
  register Links
end
