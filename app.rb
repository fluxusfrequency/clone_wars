class CloneWarApp < Sinatra::Base

  get '/' do
    
  end
#--- "about" dropdown
  get '/index/about' do

  end

  get '/index/about/mission-vision-and-values' do

  end

  get '/index/about/history' do

  end

  get '/index/about/staff-board' do

  end
#---James Pullen Bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/38-james-pullen' do

  end

#---Ryne Emory bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/39-ryne-emory' do

  end

#---Morgan Matter bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/44-morgan-matter' do

  end  
#---Bill Davis bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/43-bill-davis' do

  end

#---Mike Decker bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/42-mike-decker' do

  end  
#--- Board of Directors in /staff-board
  get 'http://www.thebikedepot.org/index.php/about/staff-board/17-about/staff-board/7-board' do

  end

  get '/index/about/contact' do

  end

  get '/index/about/privacy-policy' do

  end
#----end "about" dropdown

#----begin "program" dropdown

  get '/index/programs' do

  end

  get '/index/programs/earn-a-bike' do

  end

  get '/index/programs/fix-your-bike' do

  end

  get '/index/programs/classes' do

  end

  get '/index/programs/bike-camp' do

  end

  get '/index/programs/bike-rodeo' do

  end

#---end "programs" dropdown

#--- begin "BikeShop" dropdown

  get '/index/bike-shop' do

  end

  get '/index/bike-shop/retail' do

  end

  get '/index/bike-shop/service' do

  end

  get '/index/bike-shop/xtracycle' do

  end

 #---end "bike-shop" dropdown
 
 #---begin "support" dropdown

  get '/index/support' do

  end

  get '/index/support/volunteer' do

  end

  get 'http://www.thebikedepot.org/index/support/volunteer/21-new-volunteers' do

  end

#---- Standard Volunteer application link in /volunteer
  get 'https://app.volunteer2.com/Public/SignUp?organizationGUID=1a32e143-de77-4ddf-8c9b-1b1ef9cfac44&signupFormId=1' do

  end  

#--- Community Service application link in /volunteer
  get 'https://app.volunteer2.com/Public/SignUp?organizationGUID=1a32e143-de77-4ddf-8c9b-1b1ef9cfac44&signupFormId=2' do

  end

#----Log Your Hours Link in /volunteer
  get 'https://app.volunteer2.com/Public/Login/Volunteer' do

  end

  get '/index/support/donate-bikes' do

  end

  get '/index/support/organizing-a-bike-collection-drive' do

  end
#---Link to PDF in /organizeing-a-bike-collection-drive
  get 'http://thebikedepot.org/images/support/bikedrivepdf/hosting_a_bike_drive.pdf' do

  end
  end

  get '/index/support/memberships' do

  end
#---- Paypal Submit Button in /memberships
  get 'https://www.paypal.com/us/cgi-bin/webscr?cmd=_flow&SESSION=FbNAmz2sTkL3T_MmnQx9xa3lV4cdGoZXwI1I_2OP7R8OslOsr38AMgkhR-W&dispatch=50a222a57771920b6a3d7b606239e4d529b525e0b7e69bf0224adecfb0124e9b61f737ba21b081986471f9b93cfa01e00b63629be0164db1' do

  end

#---Bike Denver Link in /memberships
  get 'http://www.bikedenver.org/' do

  end
#---Park Hill Peloton link in /memberships 
  get 'https://www.facebook.com/pages/Park-Hill-Peloton/200955446599022' do

  end

#---eGi CarShare link in /memberships
  get 'http://carshare.org/' do

  end

  get '/index/support/wish-list' do

  end
#----end of "support" dropdown

#---begin "events" dropdown

  get '/index/events' do

  end

  get '/index/events/calendar' do

  end

  get '/index/events/park-hill-family-bike-ride' do

  end

#---end of "events" dropdown

#---begin "Links" dropdown

  get '/index/links' do 

  end

  get '/index/links/business-partners' do

  end

  get '/index/links/friends' do

  end

  get '/index/links/we-love' do

  end

#--- end "Links" dropdown

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

