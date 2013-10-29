require 'clone_wars.rb'
require 'sinatra'
require 'sinatra/base'

class CloneWarApp < Sinatra::Base

  register Sinatra::About
  register Sinatra::BikeShop
  register Sinatra::Events
  register Sinatra::Links
  register Sinatra::Program
  register Sinatra::Support

  get '/' do
    slim :home
  end

#--- googlemaps link
  
  get 'https://maps.google.com/maps?ie=UTF8&cid=10676092889539153742&q=The+Bike+Depot&iwloc=A&gl=US&hl=en-US' do

  end
#---- GivingFirst link

  get 'http://www.givingfirst.org/index.php?section=organizations&action=newDonation&fwID=27598' do

  end

#---- Facebook link

  get 'https://www.facebook.com/TheBikeDepot' do

  end

#----
end
