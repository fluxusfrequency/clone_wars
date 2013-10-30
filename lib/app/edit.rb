require 'sinatra/base'

module Sinatra
  module Edit

    def self.registered(app)

      app.get 'edit/:page' do
        erb :edit
      end

      app.post 'edit/:page' do |page|
        page = params[:page]
        PageStore.save(page.to_h)
        redirect page.url
    end
  end
  register Edit
end
