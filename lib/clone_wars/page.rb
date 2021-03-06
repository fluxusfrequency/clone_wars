class Page

  attr_accessor :title, :body, :id, :url

  def initialize(attributes = {})
    @id = attributes["id"] || nil
    @title = attributes["title"] || "Title"
    @body = attributes["body"] || "Body"
    @url = attributes["url"] || "Url"
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
