module Sinatra
  module Program

    def self.registered(app)

      app.get '/programs/earn-a-bike' do
        slim :EarnABike
      end

      app.get '/programs/fix-your-bike' do
        slim :FxYourBike
      end

      app.get '/programs/classes' do
        slim :classes
      end

      app.get '/programs/bike-camp' do
        slim :BikeCamp
      end

      app.get '/programs/bike-rodeo' do
        slim :BikeRodeo
      end
#---end "programs" dropdown
    end
  end
  register Program
end
