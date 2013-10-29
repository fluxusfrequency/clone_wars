require 'sinatra'
require 'sinatra/base'
require './lib/clone_wars'

Dir["./clone_wars/*.rb"].each do |file|
  require file
end