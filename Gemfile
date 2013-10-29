source 'https://rubygems.org'

gem 'sinatra',           require: 'sinatra/base'
gem 'sinatra-assetpack', require: 'sinatra/assetpack'
gem 'sinatra-contrib',   require: 'sinatra/reloader'

gem 'thin'
gem 'sequel'

group :development do
  gem "better_errors"
  gem 'binding_of_caller'
  gem 'sqlite3'
end

group :test do
  gem 'rack-test', require: false
  gem 'minitest',  require: false
  gem 'sinatra-assetpack', require: 'sinatra/assetpack'
  gem 'capybara'
  gem 'pry', require: 'pry'
end

group :production do
  gem 'pg'  
end