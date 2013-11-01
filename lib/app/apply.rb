require 'sinatra/base'

module Sinatra
  module Apply
    module Helpers
      def send_message
        Pony.mail(
          :from => params["namefirstname"] + params["namelastname"] + "<" + 
              params["emailaddressvalue"] + ">", 
          :to => 'bennlewis@gmail.com',
          :subject => params["namefirstname"] + params["namelastname"] + 
              " signed up to volunteer for the Bike Depot.", 
          :body => display_form_for_email,
          :port => '587',
          :via => :smtp,
          :via_options => {
            :address => 'smtp.gmail.com', 
            :port => '587', 
            :enable_starttls_auto => true,
            :user_name => 'bennlewis@gmail.com',
            :password => '',
            :authentication => :plain,
            :domain => 'localhost.localdomain'
          }) 
      end

      def display_form_for_email
        message = "Here is the information supplied by the applicant:\n"
        params.keys.each do |key|
          message += key + ":"
          message += params[key] if params[key]
        end
        message
      end
    end

    def self.registered(app)

      app.helpers Helpers

      app.get '/support/application' do
        url = '/support/application'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.post '/support/application' do
        volunteer = Volunteer.new(params)
        # send_message
        if VolunteerStore.save(volunteer)
          flash[:notice] = 
          "Thank you for your application. We'll be in touch soon."
        end
        redirect '/support'
      end

    end

  end
  register Apply
end
