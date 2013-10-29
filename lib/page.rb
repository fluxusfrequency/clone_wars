class Page

  attr_accessor :title, :body, :id, :url

  def initialize(attributes = {})
    @id = attributes["id"]
    @title = attributes["title"]
    @body = attributes["body"]
    @url = attributes["url"]
  end

end
