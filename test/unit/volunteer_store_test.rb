require './test/helpers/unit_helper'
require './lib/clone_wars.rb'
require './lib/clone_wars/volunteer_store'
require './lib/clone_wars/volunteer'

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
      :nametitle => "mr", 
      :namefirstname => "george", 
      :addresscity => "nyc", 
      :accceptorganization => "false"}
    volunteer = Volunteer.new(volunteer_hash)
    VolunteerStore.save(volunteer)
    saved_volunteer =  Sequel.sqlite('./test.sqlite3')[:volunteers].to_a.last
    found = VolunteerStore.volunteer_table.to_a.last
    assert_equal "mr", found[:nametitle]
  end

  def test_update_edits_an_existing_volunteer
    # create a new volunteer and save it to the db
    volunteer_hash = { 
      :nametitle => "mr", 
      :namefirstname => "george", 
      :addresscity => "nyc", 
      :acceptorganization => "false"}
    volunteer = Volunteer.new(volunteer_hash)
    VolunteerStore.save(volunteer)
    new_volunteer = Volunteer.new(VolunteerStore.volunteer_table.to_a.last.to_h)

    # make a change and update the db
    changes = {:nametitle => "Edited volunteer"}
    VolunteerStore.update(new_volunteer, changes)
    found = VolunteerStore.volunteer_table.to_a.last
    assert_equal "Edited volunteer", found[:nametitle]

    # make sure the old volunteer was deleted
    assert_equal 1, VolunteerStore.volunteer_table.select(:nametitle => "Edited volunteer").count
  end

  def test_delete_destroys_an_existing_volunteer
    # create a new volunteer and save it to the db
    volunteer_hash = { 
      :nametitle => "mr", 
      :namefirstname => "george", 
      :addresscity => "nyc", 
      :acceptorganization => "false"}
    volunteer = Volunteer.new(volunteer_hash)
    VolunteerStore.save(volunteer)
    new_volunteer = Volunteer.new(VolunteerStore.volunteer_table.to_a.last.to_h)

    #delete the volunteer
    VolunteerStore.delete(volunteer)
    assert_equal 0, VolunteerStore.volunteer_table.select(:nametitle => "mr").count
  end
end
