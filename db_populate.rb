require 'nokogiri'
require 'fileutils'
require 'sequel'

pages = []

Dir["./lib/app/views/*.erb"].each do |file|
  pages << File.open(file, "r")
end

pages.each do |page|
  loaded = Nokogiri::HTML(page)
  body = loaded.css("div#content-w2")
  title = loaded.title.to_s
  url = loaded.document.url
end

