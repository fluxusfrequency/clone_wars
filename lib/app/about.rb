require 'sinatra/base'

module Sinatra
  module About

    def self.registered(app)
      app.get '/about/mission-vision-and-values' do
        url = '/about/mission-vision-and-values'
        erb :MissionVisionAndValues, locals: {url: url}
      end

      app.get '/about/history' do
        url = '/about/history'
        erb :History, locals: {url: url}
      end

      app.get '/about/staff-board' do
        url = '/about/staff-board'
        erb :StaffBoard, locals: {url: url}
      end

      app.get '/about/staff-board/17-about/staff-board/38-james-pullen' do
        url = '/about/staff-board/17-about/staff-board/38-james-pullen'
        erb :JamesPullen, locals: {url: url}
      end

      app.get '/about/staff-board/17-about/staff-board/39-ryne-emory' do
        url = '/about/staff-board/17-about/staff-board/39-ryne-emory'
        erb :RyneEmory, locals: {url: url}
      end

      app.get '/about/staff-board/17-about/staff-board/44-morgan-matter' do
        url = '/about/staff-board/17-about/staff-board/44-morgan-matter'
        erb :MorganMatter, locals: {url: url}
      end

      app.get '/about/staff-board/17-about/staff-board/43-bill-davis' do
        url = '/about/staff-board/17-about/staff-board/43-bill-davis'
        erb :BillDavis, locals: {url: url}
      end

      app.get '/about/staff-board/17-about/staff-board/42-mike-decker' do
        url = '/about/staff-board/17-about/staff-board/42-mike-decker'
        erb :MikeDecker, locals: {url: url}
      end

      app.get '/about/staff-board/17-about/staff-board/7-board' do
        url = '/about/staff-board/17-about/staff-board/7-board'
        erb :BoardOfDirectors, locals: {url: url}
      end

      app.get '/about/contact' do
        url = '/about/contact'
        erb :ContactHours, locals: {url: url}
      end

      app.get '/about/privacy-policy' do
        url = '/about/privacy-policy'
        erb :PrivacyPolicy, locals: {url: url}
      end
    end

  end
  register About
end
