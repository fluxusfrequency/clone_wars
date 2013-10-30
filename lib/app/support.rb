require 'sinatra/base'

module Sinatra
  module Support

    def self.registered(app)

      app.get '/support/volunteer' do
        url = '/support/volunteer'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/support/volunteer/21-new-volunteers' do
        url = '/support/volunteer/21-new-volunteers'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
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
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/support/organizing-a-bike-collection-drive' do
        url = '/support/organizing-a-bike-collection-drive'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end
    # #---Link to PDF in /organizing-a-bike-collection-drive
    #   app.get 'images/support/bikedrivepdf/hosting_a_bike_drive.pdf' do
    #     erb :images
    #   end

      app.get '/support/memberships' do
        url = '/support/memberships'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.get '/support/wish-list' do
        url = '/support/wish-list'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end
#----end of "support" dropdown
    end
  end
  register Support
end
