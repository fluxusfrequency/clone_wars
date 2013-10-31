require './test/helpers/unit_helper'
require './lib/clone_wars.rb'
require './lib/clone_wars/volunteer_store'


class VolunteerStoreTest < Minitest::Test

  def teardown
    VolunteerStore.delete_all
  end

  def test_it_has_a_database
    assert VolunteerStore.database
  end

  def test_it_has_a_test_database
    assert_equal Sequel.sqlite('./test.sqlite3').inspect, VolunteerStore.database.inspect
  end

  def test_the_database_is_empty_on_load
    assert_equal 0, Sequel.sqlite('./test.sqlite3')[:volunteers].count
  end

  def test_save_adds_a_volunteers_params_to_the_db
    volunteer_hash = {
      "id" => "1", 
      "nametitle" => "mr", 
      "namefirstname" => "george", 
      "addresscity" => "nyc", 
      "acceptorganization" => "false"}
    volunteer = Volunteer.new(volunteer_hash)
    VolunteerStore.save(volunteer)
    assert_equal 1, Sequel.sqlite('./test.sqlite3')[:volunteers].count
  end

  def test_find_finds_a_volunteer_in_the_db
    volunteer_hash = {
      "id" => "1", 
      "nametitle" => "mr", 
      "namefirstname" => "george", 
      "addresscity" => "nyc", 
      "acceptorganization" => "false"}
    volunteer = Volunteer.new(volunteer_hash)
    VolunteerStore.save(volunteer)
    saved_volunteer =  Sequel.sqlite('./test.sqlite3')[:volunteers].to_a.last
    found = VolunteerStore.find(saved_volunteer[:id])
    assert_equal "New volunteer", found.title
  end

  def test_find_by_url_returns_the_volunteer_with_that_url
    volunteer_hash = {
      "id" => "1", 
      "nametitle" => "mr", 
      "namefirstname" => "george", 
      "addresscity" => "nyc", 
      "acceptorganization" => "false"}
    volunteer = Volunteer.new(volunteer_hash)
    VolunteerStore.save(volunteer)
    found = VolunteerStore.find_by_url("/new/volunteer")
    assert_equal "New volunteer", found.title
  end

  def test_update_edits_an_existing_volunteer
    # create a new volunteer and save it to the db
    volunteer_hash = {
      "id" => "1", 
      "nametitle" => "mr", 
      "namefirstname" => "george", 
      "addresscity" => "nyc", 
      "acceptorganization" => "false"}
    volunteer = Volunteer.new(volunteer_hash)
    VolunteerStore.save(volunteer)

    # make a change and update the db
    changes = {"nametitle" => "Edited volunteer"}
    VolunteerStore.update(volunteer, changes)
    found = VolunteerStore.find_by_url("/new/volunteer")
    assert_equal "Edited volunteer", found.title

    # make sure the old volunteer was deleted
    assert_equal 1, VolunteerStore.volunteer_table.select(:url => "/new/volunteer").count
  end

  def test_delete_destroys_an_existing_volunteer
    # create a new volunteer and save it to the db
    volunteer_hash = {
      "id" => "1", 
      "nametitle" => "mr", 
      "namefirstname" => "george", 
      "addresscity" => "nyc", 
      "acceptorganization" => "false"}
    volunteer = Volunteer.new(volunteer_hash)
    VolunteerStore.save(volunteer)

    #delete the volunteer
    VolunteerStore.delete(volunteer)
    assert_equal 0, VolunteerStore.volunteer_table.select(:url => "/new/volunteer").count
  end
end
