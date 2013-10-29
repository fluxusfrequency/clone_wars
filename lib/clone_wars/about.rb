require 'sinatra/base'

module Sinatra
  module About

    def self.registered(app)
      app.get '/about/mission-vision-and-values' do
        slim :MissionVisionAndValues
      end

      app.get '/about/history' do
        slim :History
      end

      app.get '/about/staff-board' do
        slim :StaffBoard
      end

      app.get '/about/staff-board/17-about/staff-board/38-james-pullen' do
        slim :JamesPullen
      end

      app.get '/about/staff-board/17-about/staff-board/39-ryne-emory' do
        slim :RyneEmory
      end

      app.get '/about/staff-board/17-about/staff-board/44-morgan-matter' do
        slim :MorganMatter
      end

      app.get '/about/staff-board/17-about/staff-board/43-bill-davis' do
        slim :BillDavis
      end

      app.get '/about/staff-board/17-about/staff-board/42-mike-decker' do
        slim :MikeDecker
      end

      app.get '/about/staff-board/17-about/staff-board/7-board' do
        slim :BoardOfDirectors
      end

      app.get '/about/contact' do
        slim :ContactsHours
      end

      app.get '/about/PrivacyPolicy' do
        slim :PrivacyPolicy
      end
    end
    
  end
  register About
end
