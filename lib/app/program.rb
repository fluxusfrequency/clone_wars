require 'sinatra/base'

module Sinatra
  module Program

    def self.registered(app)

      app.get '/programs/earn-a-bike' do
        erb :EarnABike
      end

      app.get '/programs/fix-your-bike' do
        erb :FixYourBike
      end

      app.get '/programs/classes' do
        erb :Classes
      end

      app.get '/programs/bike-camp' do
        erb :BikeCamp
      end

      app.get '/programs/bike-rodeo' do
        erb :BikeRodeo
      end
#---end "programs" dropdown
    end
  end
  register Program
end
