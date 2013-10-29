class Page

  attr_accessor :title, :body, :images, :id, :url

  def initialize(attributes = {})
    @id = attributes["id"]
    @title = attributes["title"]
    @body = attributes["body"]
    @images = attributes["images"]
    @url = attributes["url"]
  end

end
