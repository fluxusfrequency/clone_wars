class CloneWarAbout < Sinatra::Base

#--- "about" dropdown
  get '/index/about/mission-vision-and-values' do

  end

  get '/index/about/history' do

  end

  get '/index/about/staff-board' do

  end
#---James Pullen Bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/38-james-pullen' do

  end

#---Ryne Emory bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/39-ryne-emory' do

  end

#---Morgan Matter bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/44-morgan-matter' do

  end  
#---Bill Davis bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/43-bill-davis' do

  end

#---Mike Decker bio in /staff-board
  get 'http://www.thebikedepot.org/index/about/staff-board/17-about/staff-board/42-mike-decker' do

  end  
#--- Board of Directors in /staff-board
  get 'http://www.thebikedepot.org/index.php/about/staff-board/17-about/staff-board/7-board' do

  end

  get '/index/about/contact' do

  end

  get '/index/about/privacy-policy' do

  end
#----end "about" dropdown
end
