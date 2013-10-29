require 'nokogiri'
require 'open-uri'
require 'fileutils'

urls = [ 
'http://thebikedepot.org/', 
'http://thebikedepot.org/index.php/about', 
'http://thebikedepot.org/index.php/about/mission-vision-and-values', 
'http://thebikedepot.org/index.php/about/history', 
'http://thebikedepot.org/index.php/about/staff-board', 
'http://thebikedepot.org/index.php/about/contact', 
'http://thebikedepot.org/index.php/about/privacy-policy', 
'http://thebikedepot.org/index.php/programs', 
'http://thebikedepot.org/index.php/programs/earn-a-bike', 
'http://thebikedepot.org/index.php/programs/fix-your-bike', 
'http://thebikedepot.org/index.php/programs/classes', 
'http://thebikedepot.org/index.php/programs/bike-camp', 
'http://thebikedepot.org/index.php/programs/bike-rodeo', 
'http://thebikedepot.org/index.php/bike-shop', 
'http://thebikedepot.org/index.php/bike-shop/retail', 
'http://thebikedepot.org/index.php/bike-shop/service', 
'http://thebikedepot.org/index.php/bike-shop/xtracycle', 
'http://thebikedepot.org/index.php/support', 
'http://thebikedepot.org/index.php/support/volunteer', 
'http://thebikedepot.org/index.php/support/donate-bikes', 
'http://thebikedepot.org/index.php/support/organizing-a-bike-collection-drive', 
'http://thebikedepot.org/index.php/support/memberships', 
'http://thebikedepot.org/index.php/support/wish-list', 
'http://thebikedepot.org/index.php/events', 
'http://thebikedepot.org/index.php/events/calendar', 
'http://thebikedepot.org/index.php/events/park-hill-family-bike-ride', 
'http://thebikedepot.org/index.php/links', 
'http://thebikedepot.org/index.php/links/business-partners', 
'http://thebikedepot.org/index.php/links/friends', 
'http://thebikedepot.org/index.php/links/we-love', 
'http://thebikedepot.org/index.php/about/staff-board/17-about/staff-board/38-james-pullen', 
'http://thebikedepot.org/index.php/about/staff-board/17-about/staff-board/39-ryne-emory', 
'http://thebikedepot.org/index.php/about/staff-board/17-about/staff-board/44-morgan-matter', 
'http://thebikedepot.org/index.php/about/staff-board/17-about/staff-board/43-bill-davis', 
'http://thebikedepot.org/index.php/about/staff-board/17-about/staff-board/42-mike-decker', 
'http://thebikedepot.org/index.php/about/staff-board/17-about/staff-board/7-board', 
'http://thebikedepot.org/index.php/support/volunteer/21-new-volunteers', 
'http://thebikedepot.org/index.php/links/31-links/business-partners/29-business-partners', 
'http://thebikedepot.org/index.php/links/32-links/friends/30-friends', 
'http://thebikedepot.org/index.php/links/33-links/we-love/31-we-love']

urls.each do |url|
  page = Nokogiri::HTML(open(url))
  body = page.css("div#content-w2")
  title = page.title.to_s
  FileUtils.touch("./scraped/#{title}.html")
  File.open("./scraped/#{title}.html", "w") do |file|
    file.write(body)
  end
end
