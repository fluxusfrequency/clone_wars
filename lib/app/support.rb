require 'sinatra/base'

module Sinatra
  module Support

    def self.registered(app)

      app.get '/support/volunteer' do
        url = '/support/volunteer'
        erb :Volunteer, locals: {url: url}
      end

      app.get '/support/volunteer/21-new-volunteers' do
        url = '/support/volunteer/21-new-volunteers'
        erb :NewVolunteers, locals: {url: url}
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
        url = '/support/donate-bikes'
        erb :DonateBikes, locals: {url: url}
      end

      app.get '/support/organizing-a-bike-collection-drive' do
        url = '/support/organizing-a-bike-collection-drive'
        erb :OrganizingABikeCollectionDrive, locals: {url: url}
      end
    # #---Link to PDF in /organizing-a-bike-collection-drive
    #   app.get 'images/support/bikedrivepdf/hosting_a_bike_drive.pdf' do
    #     erb :images
    #   end

      app.get '/support/memberships' do
        url = '/support/memberships'
        erb :Memberships, locals: {url: url}
      end

      app.get '/support/wish-list' do
        url = '/support/wish-list'
        erb :WishList, locals: {url: url}
      end
#----end of "support" dropdown
    end
  end
  register Support
end
