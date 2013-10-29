module Sinatra
  module Events

    def self.registered(app)

      get '/events/calendar' do
        slim :calendar
      end

      get '/events/park-hill-family-bike-ride' do
        slim :ParkHillFamilyBikeRide
      end
    #---end of "events" dropdown
    end
  end
  register Events
end
