require 'sinatra/base'

module Sinatra
  module Program

    def self.registered(app)

      app.get '/programs/earn-a-bike' do
        url = '/programs/earn-a-bike'
        erb :EarnABike, locals: {url: url}
      end

      app.get '/programs/fix-your-bike' do
        url = '/programs/fix-your-bike' 
        erb :FixYourBike, locals: {url: url}
      end

      app.get '/programs/classes' do
        url = '/programs/classes'
        erb :Classes, locals: {url: url}
      end

      app.get '/programs/bike-camp' do
        url = '/programs/bike-camp'
        erb :BikeCamp, locals: {url: url}
      end

      app.get '/programs/bike-rodeo' do
        url = '/programs/bike-rodeo'
        erb :BikeRodeo, locals: {url: url}
      end
#---end "programs" dropdown
    end
  end
  register Program
end
