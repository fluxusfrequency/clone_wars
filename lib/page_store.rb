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
    @all
  end
end
