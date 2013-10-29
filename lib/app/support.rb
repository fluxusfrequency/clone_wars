require 'sinatra/base'

module Sinatra
  module Support

    def self.registered(app)

      app.get '/support/volunteer' do
        erb :Volunteer
      end

      app.get '/support/volunteer/21-new-volunteers' do
        erb :NewVolunteers
      end

    # #---- Standard Volunteer application link in /volunteer
    #   app.get 'https://app.volunteer2.com/Public/SignUp?organizationGUID=1a32e143-de77-4ddf-8c9b-1b1ef9cfac44&signupFormId=1' do

    #   end

    # #--- Community Service application link in /volunteer
    #   app.get 'https://app.volunteer2.com/Public/SignUp?organizationGUID=1a32e143-de77-4ddf-8c9b-1b1ef9cfac44&signupFormId=2' do

    #   end

    # #----Log Your Hours Link in /volunteer
    #   app.get 'https://app.volunteer2.com/Public/Login/Volunteer' do

    #   end

      app.get '/support/donate-bikes' do
        erb :DonateBikes
      end

      app.get '/support/organizing-a-bike-collection-drive' do
        erb :OrganizingABikeCollectionDrive
      end
    # #---Link to PDF in /organizing-a-bike-collection-drive
    #   app.get 'images/support/bikedrivepdf/hosting_a_bike_drive.pdf' do
    #     erb :images
    #   end

      app.get '/support/memberships' do
        erb :Memberships
      end

      app.get '/support/wish-list' do
        erb :WishList
      end
#----end of "support" dropdown
    end
  end
  register Support
end