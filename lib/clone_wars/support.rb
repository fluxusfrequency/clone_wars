class CloneWarsSupport < Sinatra::Base
  
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
#---Link to PDF in /organizing-a-bike-collection-drive
  get 'http://thebikedepot.org/images/support/bikedrivepdf/hosting_a_bike_drive.pdf' do

  end

  get '/index/support/memberships' do

  end

  get '/index/support/wish-list' do

  end
#----end of "support" dropdown
end
