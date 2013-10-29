require './test/helpers/unit_helper'
require './lib/clone_wars'
require './lib/page_store'
require './lib/page'

class PageStoreTest < Minitest::Test

  def teardown
    PageStore.clear
  end

  def test_save_and_retrieve_a_page
    page = Page.new("title" => "about","body" => "text", "url" => "/sample")
    about = PageStore.save(page)

    assert_equal 1, PageStore.count

    page = PageStore.find(about)
    assert_equal "about", page.title
    assert_equal "text", page.body
  end

  def test_save_and_retrieve_one_of_many_pages
    about = Page.new("title" => "about", "body" => "this is the body text", "url" => "/sample")
    bikeshop = Page.new("title" => "bikeshop", "body" => "this is the body text", "url" => "/sample")
    events = Page.new("title" => "events", "body" => "this is the body text", "url" => "/sample")
    id1 = PageStore.save(about)
    id2 = PageStore.save(bikeshop)
    id3 = PageStore.save(events)

    assert_equal 3, PageStore.count

    page = PageStore.find(id2)
    assert_equal "bikeshop", page.title
  end

  def test_update_idea
    page = Page.new("title" => "events","body" => "this is the body text", "url" => "/sample")
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

  def test_it_has_a_database
    assert PageStore.database
  end

  def test_it_has_a_test_database
    assert_equal Sequel.sqlite('./test.sqlite3').inspect, PageStore.database.inspect
  end

  def test_it_loads_the_database
    assert_kind_of Page, PageStore.all.first
  end

  def test_it_can_find_a_page_by_id
    page = Page.new("title" => "events", "body" => "this is the body text", "url" => "/sample")
    id = PageStore.save(page)

    assert_kind_of Page, PageStore.find(page.id)
  end

end
