require 'sinatra'
require 'sinatra/base'
require 'slim'
require './lib/clone_wars'
require './lib/clone_wars/about'
require './lib/clone_wars/basic_routes'
require './lib/clone_wars/bike-shop'
require './lib/clone_wars/events'
require './lib/clone_wars/links'
require './lib/clone_wars/program'
require './lib/clone_wars/support'

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
    slim :Home
  end

# #--- googlemaps link
  
#   get 'https://maps.google.com/maps?ie=UTF8&cid=10676092889539153742&q=The+Bike+Depot&iwloc=A&gl=US&hl=en-US' do

#   end
# #---- GivingFirst link

#   get 'http://www.givingfirst.org/index.php?section=organizations&action=newDonation&fwID=27598' do

#   end

# #---- Facebook link

#   get 'https://www.facebook.com/TheBikeDepot' do

#   end

# #----
end
