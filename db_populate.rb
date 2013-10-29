require 'fileutils'
require 'sequel'

titles = []
pgs = []
urls = [  
'/about',
'/programs/bike-camp', 
'/programs/bike-rodeo', 
'/bike-shop', 
'/about/staff-board/17-about/staff-board/43-bill-davis', 
'/about/staff-board/17-about/staff-board/7-board', 
'/links/business-partners', 
'/events/calendar', 
'/programs/classes', 
'/about/contact', 
'/support/donate-bikes', 
'/programs/earn-a-bike', 
'/events', 
'/programs/fix-your-bike', 
'/links/friends', 
'/about/history', 
'/',
'/about/staff-board/17-about/staff-board/38-james-pullen', 
'',
'/links', 
'/support/memberships', 
'/about/staff-board/17-about/staff-board/42-mike-decker', 
'/about/mission-vision-and-values', 
'/about/staff-board/17-about/staff-board/44-morgan-matter', 
'/support/volunteer/21-new-volunteers', 
'/support/organizing-a-bike-collection-drive', 
'/events/park-hill-family-bike-ride', 
'/about/privacy-policy', 
'/programs', 
'/bike-shop/retail', 
'/about/staff-board/17-about/staff-board/39-ryne-emory', 
'/bike-shop/service', 
'/about/staff-board', 
'/support', 
'/support/volunteer', 
'/links/we-love', 
'/support/wish-list', 
'/bike-shop/xtracycle', ]

database = Sequel.sqlite('clone_wars.sqlite3')
pages = database.from(:pages).to_a

Dir["./lib/app/views/*.erb"].each do |file|
  filename = file.to_s.gsub(/.erb/, "")
  filename = filename.gsub(/\.\/lib\/app\/views\//, "")
  titles << filename
  pgs << File.open(file, "r").read
end


pgs.each_with_index do |page, i|
  hash = {:title => titles[i], :body => pgs[i], :url => urls[i]}
  database.from(:pages).insert(hash)
end

