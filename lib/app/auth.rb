require 'sinatra/base'
require 'sinatra/flash'

module Sinatra
  module Auth
    module Helpers

      def authorized?
        session[:admin]
      end

      def protected!
        unless authorized?
          flash[:notice] = "You must be logged in to do that."
          redirect '/login'
        end
      end
    end

    def self.registered(app)
      app.helpers Helpers

      app.enable :sessions

      app.set :username => 'admin',
              :password => 'password'

      app.get '/login' do
        erb :login
      end

      app.post '/login' do
        if params[:username] == settings.username && params[:password] == settings.password
          session[:admin] = true
          flash[:notice] = "You are now logged in as #{settings.username}."
          erb :Home, locals: {url: url}
        else
          flash[:notice] = "The username or password you entered was incorrect."
          redirect to('/login')
        end
      end

      app.get '/logout' do
        session[:admin] = nil
        flash[:notice] = "You have now logged out."
        redirect to ('/')
      end
    end

  end
  register Auth
end
