class Page

  attr_accessor :title, :body, :id, :url

  def initialize(attributes = {})
    @id = attributes["id"]
    @title = attributes["title"]
    @body = attributes["body"]
    @url = attributes["url"]
  end

  def to_h
    {
      "id" => id,
      "title" => title,
      "body" => body,
      "url" => url
    }
  end

end
