require './test/helpers/unit_helper'
require './lib/clone_wars'
require './lib/page_store'
require './lib/page'

class PageStoreTest < Minitest::Test

  def teardown
    PageStore.all.clear
  end

  def test_save_and_retrieve_a_page
    page = Page.new("about", "text", "images")
    about = PageStore.save(page)

    assert_equal 1, PageStore.count

    page = PageStore.find(about)
    assert_equal "about", page.title
    assert_equal "text", page.body
  end

  def test_save_and_retrieve_one_of_many_pages
    about = Page.new("about", "text on the about page", "path/images.jpg")
    bikeshop = Page.new("bikeshop", "text on the bikeshop page", "path/images.jpg")
    events = Page.new("events", "text on the events page", "path/images.jpg")
    id1 = PageStore.save(about)
    id2 = PageStore.save(bikeshop)
    id3 = PageStore.save(events)

    assert_equal 3, PageStore.count

    page = PageStore.find(id2)
    assert_equal "bikeshop", page.title
  end

  def test_update_idea
    page = Page.new("events", "this is the body text", "path/image, otherpath/image")
    id = PageStore.save(page)

    page = PageStore.find(id)
    page.title = "events"
    page.body = "New body text!"

    PageStore.save(page)

    assert_equal 1, PageStore.count

    page = PageStore.find(id)
    assert_equal "events", page.title
    assert_equal "New body text!", page.body
  end

end
