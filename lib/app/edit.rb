require 'sinatra/base'

module Sinatra
  module Edit

    def self.registered(app)

      app.get '/edit/:url' do |url|
        throw
        page = PageStore.find_by_url(url)
        erb :edit, locals: {page: page}


      end

      app.post 'edit/:page' do |page|
        page = params[:page]
        PageStore.save(page.to_h)
        redirect page.url
      end
    end
  end
  register Edit
end
