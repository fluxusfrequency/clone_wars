require 'sinatra/base'

module Sinatra
  module Edit

    def self.registered(app)

      app.get '/edit' do
        protected!
        page = PageStore.find_by_url(params["url"])
        erb :edit, locals: {page: page}
      end

      app.put '/edit' do
        protected!
        page = PageStore.find_by_url(params["url"])
        attributes = 
        { "title" => params["title"], 
          "body" => params["body"], 
          "url" => params["url"] }
        if PageStore.update(page, attributes)
          flash[:notice] = "Changes were saved."
        end
        redirect "#{page.url}"
      end
    end
    
  end
  register Edit
end
