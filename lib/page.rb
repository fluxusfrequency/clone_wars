class Page

  attr_accessor :title, :body, :images, :id

  def initialize(attributes = {})
    @id = attributes["id"]
    @title = attributes["title"]
    @body = attributes["body"]
    @images = attributes["images"]
  end

end
