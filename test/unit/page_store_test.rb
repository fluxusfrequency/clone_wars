require './test/helpers/unit_helper'
require './lib/clone_wars'
require './lib/page_store'
require './lib/page'

class PageStoreTest < Minitest::Test

  def teardown
    PageStore.delete_all
  end

  def test_it_has_a_database
    assert PageStore.database
  end

  def test_it_has_a_test_database
    assert_equal Sequel.sqlite('./test.sqlite3').inspect, PageStore.database.inspect
  end

  def test_the_database_is_empty_on_load
    assert_equal 0, Sequel.sqlite('./test.sqlite3')[:pages].count
  end

  def test_save_adds_a_pages_params_to_the_db
    page_hash = {"title" => "New Page", "body" => "This is my body", "url" => "/new/page"}
    page = Page.new(page_hash)
    PageStore.save(page)
    assert_equal 1, Sequel.sqlite('./test.sqlite3')[:pages].count
  end

  def test_find_finds_a_page_in_the_db
    page_hash = {"title" => "New Page", "body" => "This is my body", "url" => "/new/page"}
    page = Page.new(page_hash)
    PageStore.save(page)
    saved_page =  Sequel.sqlite('./test.sqlite3')[:pages].to_a.last
    found = PageStore.find(saved_page[:id])
    assert_equal "New Page", found.title
  end

  def test_find_by_url_returns_the_page_with_that_url
    page_hash = {"title" => "New Page", "body" => "This is my body", "url" => "/new/page"}
    page = Page.new(page_hash)
    PageStore.save(page)
    found = PageStore.find_by_url("/new/page")
    assert_equal "New Page", found.title
  end

  def test_update_edits_an_existing_page
    # create a new page and save it to the db
    page_hash = {"title" => "New Page", "body" => "This is my body", "url" => "/new/page"}
    page = Page.new(page_hash)
    PageStore.save(page)

    # make a change and update the db
    changes = {"title" => "Edited Page"}
    PageStore.update(page, changes)
    found = PageStore.find_by_url("/new/page")
    assert_equal "Edited Page", found.title

    # make sure the old page was deleted
    assert_equal 1, PageStore.page_table.select(:url => "/new/page").count
  end

  def test_delete_destroys_an_existing_page
    # create a new page and save it to the db
    page_hash = {"title" => "New Page", "body" => "This is my body", "url" => "/new/page"}
    page = Page.new(page_hash)
    PageStore.save(page)

    #delete the page
    PageStore.delete(page)
    assert_equal 0, PageStore.page_table.select(:url => "/new/page").count
  end
end
