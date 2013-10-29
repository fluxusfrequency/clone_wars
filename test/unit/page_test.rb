require './test/helpers/unit_helper.rb'
require './lib/clone_wars'
require './lib/page'

class PageTest < Minitest::Test

  def test_basic_page
    page = Page.new("id" => "1", "title" => "title", "body" => "body", "url" => "url")
    assert_equal "title", page.title
    assert_equal "body", page.body
    assert_equal "url", page.url
  end
  
end
