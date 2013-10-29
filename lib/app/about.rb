require 'sinatra/base'

module Sinatra
  module About

    def self.registered(app)
      app.get '/about/mission-vision-and-values' do
        erb :MissionVisionAndValues
      end

      app.get '/about/history' do
        erb :History
      end

      app.get '/about/staff-board' do
        erb :StaffBoard
      end

      app.get '/about/staff-board/17-about/staff-board/38-james-pullen' do
        erb :JamesPullen
      end

      app.get '/about/staff-board/17-about/staff-board/39-ryne-emory' do
        erb :RyneEmory
      end

      app.get '/about/staff-board/17-about/staff-board/44-morgan-matter' do
        erb :MorganMatter
      end

      app.get '/about/staff-board/17-about/staff-board/43-bill-davis' do
        erb :BillDavis
      end

      app.get '/about/staff-board/17-about/staff-board/42-mike-decker' do
        erb :MikeDecker
      end

      app.get '/about/staff-board/17-about/staff-board/7-board' do
        erb :BoardOfDirectors
      end

      app.get '/about/contact' do
        erb :ContactHours
      end

      app.get '/about/privacy-policy' do
        erb :PrivacyPolicy
      end
    end
    
  end
  register About
end
