require 'sequel'
class PageStore

  def self.save(page)
    @all ||= []
    page.id ||= next_id
    @all[page.id] = page
    page.id
  end

  def self.find(id)
    @all[id]
  end

  def self.next_id
    @all.size
  end
  
  def self.count
    @all.length
  end

  def self.all
    @all ||= database[:pages].to_a
  end

  def self.clear
    @all = []
  end

  def self.database
    if ENV['RACK_ENV'] == 'test'
      @database ||= Sequel.sqlite('./test.sqlite3')
    else
      @database ||= Sequel.sqlite('./clone_wars.sqlite3')
    end
  end
end
