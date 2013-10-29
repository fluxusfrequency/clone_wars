require './clone_wars.rb'

class CloneWarApp < Sinatra::Base

  get '/' do
    
  end

  get '/index/about' do

  end

  get '/index/programs' do

  end

  get '/index/bike-shop' do

  end

  get '/index/support' do

  end

  get '/index/events' do

  end

  get '/index/links' do 

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
