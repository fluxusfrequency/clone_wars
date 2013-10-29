require 'sinatra'
require 'sinatra/base'
require './lib/clone_wars'
require './lib/app/about'
require './lib/app/basic_routes'
require './lib/app/bike-shop'
require './lib/app/events'
require './lib/app/links'
require './lib/app/program'
require './lib/app/support'

class CloneWarApp < Sinatra::Base
  set :root, 'lib/app'

  register Sinatra::About
  register Sinatra::BasicRoutes
  register Sinatra::BikeShop
  register Sinatra::Events
  register Sinatra::Links
  register Sinatra::Program
  register Sinatra::Support

  get '/' do
    erb :Home
  end

#--- googlemaps link
# 'https://maps.google.com/maps?ie=UTF8&cid=10676092889539153742&q=The+Bike+Depot&iwloc=A&gl=US&hl=en-US'
#---- GivingFirst link
# 'http://www.givingfirst.org/index.php?section=organizations&action=newDonation&fwID=27598'
#---- Facebook link
# 'https://www.facebook.com/TheBikeDepot'

end
