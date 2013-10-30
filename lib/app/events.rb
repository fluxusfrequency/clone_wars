require 'sinatra/base'

module Sinatra
  module Events

    def self.registered(app)

      app.get '/events/calendar' do
        url = '/events/calendar'
        erb :calendar, locals: {url: url}
      end

      app.get '/events/park-hill-family-bike-ride' do
        url = '/events/park-hill-family-bike-ride'
        erb :ParkHillFamilyBikeRide, locals: {url: url}
      end
    #---end of "events" dropdown
    end
  end
  register Events
end
