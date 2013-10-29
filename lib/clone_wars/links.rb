require 'sinatra/base'

module Sinatra
  module Links

    def self.registered(app)

      app.get '/links/business-partners' do
        slim :BusinessPartners
      end

      app.get '/links/friends' do
        slim :friends
      end

      app.get '/links/we-love' do
        slim :WeLove
      end

#--- end "Links" dropdown
    end
  end
  register Links
end
