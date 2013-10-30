require './test/helpers/unit_helper.rb'
require './lib/clone_wars'
require './lib/clone_wars/volunteer'

class VolunteerTest < Minitest::Test

  def test_basic_page
    volunteer = Volunteer.new("id" => "1", "nametitle" => "title", "namefirstname" => "firstname", "acceptorganization" => "false")
    assert_equal "title", volunteer.nametitle
    assert_equal "body", volunteer.namefirstname
    assert_equal "url", volunteer.acceptorganization
  end

  def test_it_has_a_to_h_method
    volunteer = Volunteer.new("id" => "1", "nametitle" => "title", "namefirstname" => "firstname", "addresscity" => "city", "acceptorganization" => "false")
    hash = {"id" => "1", "nametitle" => "title", "namefirstname" => "firstname", "addresscity" => "city", "acceptorganization" => "false"}
    assert_equal hash, volunteer.to_h
  end

end
