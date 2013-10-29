require './test/helpers/unit_helper.rb'
require './lib/clone_wars'

class PageTest < Minitest::Test

  def test_basic_page
    page = Page.new("title", "body", "images")
    assert_equal "title", page.title
    assert_equal "body", page.body
    assert_equal "images", page.images
  end
  
end
