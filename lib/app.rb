# require 'sinatra'
# require 'sinatra/base'
# require 'sinatra/flash'
require './lib/clone_wars.rb'

Dir['./lib/app/*.rb'].each do |file|
  require file
end

class CloneWarApp < Sinatra::Base
  
  set :root, 'lib/app'
  set :method_override, true

  register Sinatra::Auth
  register Sinatra::About
  register Sinatra::Apply
  register Sinatra::BasicRoutes
  register Sinatra::BikeShop
  register Sinatra::Events
  register Sinatra::Flash
  register Sinatra::Links
  register Sinatra::Program
  register Sinatra::Support
  register Sinatra::Edit

  get '/' do
    url = '/'
    erb :Home, locals: {url: url}
  end

end
