require 'sinatra/base'

module Sinatra
  module Links

    def self.registered(app)

      app.get '/links/business-partners' do
        erb :BusinessPartners
      end

      app.get '/links/friends' do
        erb :Friends
      end

      app.get '/links/we-love' do
        erb :WeLove
      end

#--- end "Links" dropdown
    end
  end
  register Links
end
