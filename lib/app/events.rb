require 'sinatra/base'

module Sinatra
  module Events

    def self.registered(app)

      app.get '/events/calendar' do
        erb :calendar
      end

      app.get '/events/park-hill-family-bike-ride' do
        erb :ParkHillFamilyBikeRide
      end
    #---end of "events" dropdown
    end
  end
  register Events
end
