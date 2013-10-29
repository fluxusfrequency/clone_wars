require 'sinatra/base'

module Sinatra
  module Events

    def self.registered(app)

      app.get '/events/calendar' do
        slim :calendar
      end

      app.get '/events/park-hill-family-bike-ride' do
        slim :ParkHillFamilyBikeRide
      end
    #---end of "events" dropdown
    end
  end
  register Events
end
