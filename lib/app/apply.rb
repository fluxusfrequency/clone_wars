module Sinatra
  module Apply

    def self.registered(app)
      app.get '/support/application' do
        url = '/support/application'
        body = PageStore.find_by_url(url).body
        title = PageStore.find_by_url(url).title
        erb :Show, locals: {url: url, body: body, title: title}
      end

      app.post '/support/application' do
        puts params.inspect
        volunteer = Volunteer.new(params)
        if VolunteerStore.save(volunteer)
          flash[:notice] = "Thank you for your application."
        end
        redirect '/support'
      end

    end

  end
  register Apply
end
