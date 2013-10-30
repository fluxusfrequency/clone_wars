require 'sinatra'
require 'sinatra/base'
require 'sinatra/flash'
require './lib/clone_wars.rb'
require './lib/app/about'
require './lib/app/auth'
require './lib/app/basic_routes'
require './lib/app/bike-shop'
require './lib/app/edit'
require './lib/app/events'
require './lib/app/links'
require './lib/app/program'
require './lib/app/support'
require './lib/app/edit'

class CloneWarApp < Sinatra::Base
  set :root, 'lib/app'
  set :method_override, true

  register Sinatra::About
  register Sinatra::Auth
  register Sinatra::BasicRoutes
  register Sinatra::BikeShop
  register Sinatra::Events
  register Sinatra::Flash
  register Sinatra::Links
  register Sinatra::Program
  register Sinatra::Support
  register Sinatra::Edit

  get '/' do
    url = '/'
    erb :Home, locals: {url: url}
  end

#--- googlemaps link
# 'https://maps.google.com/maps?ie=UTF8&cid=10676092889539153742&q=The+Bike+Depot&iwloc=A&gl=US&hl=en-US'
#---- GivingFirst link
# 'http://www.givingfirst.org/index.php?section=organizations&action=newDonation&fwID=27598'
#---- Facebook link
# 'https://www.facebook.com/TheBikeDepot'

end
