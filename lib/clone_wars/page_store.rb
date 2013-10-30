require 'sequel'

class PageStore
  class << self

  def save(page)
    page_table.insert({
      "title" => page.title, 
      "body" => page.body,
      "url" => page.url,
      })
  end

  def find(id)
    result = page_table.where(:id => id).to_a.last
    Page.new(
      {"id" => result[:id], 
      "body" => result[:body],
      "title" => result[:title], 
      "url" => result[:url] }
      )
  end

  def find_by_url(url)
    # result = page_table.to_a.first
    result = page_table.where(:url => url).to_a.last
    Page.new(
      {"id" => result[:id], 
      "body" => result[:body],
      "title" => result[:title], 
      "url" => result[:url] }
      )
  end

  def update(page, attributes)
    found = find_by_url(page.url)
    new_page = Page.new(found.to_h.merge(attributes))
    delete(found)
    save(new_page)
  end

  def delete(page)
    page_table.select(:url => page.url).delete
  end

  def delete_all
    page_table.delete
  end
  

  def database
    if ENV['RACK_ENV'] == 'test'
      @database ||= Sequel.sqlite('./test.sqlite3')
    else
      @database ||= Sequel.sqlite('./clone_wars.sqlite3')
    end
  end

  def page_table
    database[:pages]
  end

  end
end
