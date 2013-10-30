require 'sequel'
class PageStore

  def self.save(page)
    database[:pages].insert(page.to_h)
  end

  def self.find(id)
    Page.new(database[:pages].find(id).first)
  end

  def self.next_id
    @all.size
  end
  
  def self.count
    all.to_a.length
  end

  def self.all
    @all = get_pages_from_db
  end

  def self.get_pages_from_db
    pages = []
    database[:pages].to_a.each do |hash|
      pages << Page.new(hash)
    end
    pages
  end

  def self.clear
    database[:pages].delete
  end

  def self.database
    if ENV['RACK_ENV'] == 'test'
      @database ||= Sequel.sqlite('./test.sqlite3')
    else
      @database ||= Sequel.sqlite('./clone_wars.sqlite3')
    end
  end
end
