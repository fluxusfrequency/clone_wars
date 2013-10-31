require './test/helpers/unit_helper.rb'
require './lib/clone_wars'
require './lib/clone_wars/volunteer'

class VolunteerTest < Minitest::Test

  def test_basic_volunteer
    volunteer = Volunteer.new(
      :nametitle => "title", 
      :namefirstname => "firstname", 
      :acceptorganization => "false")
    assert_equal "title", volunteer.nametitle
    assert_equal "firstname", volunteer.namefirstname
    assert_equal "false", volunteer.acceptorganization
  end

  def test_it_has_a_to_h_method
    volunteer = Volunteer.new(
      :nametitle => "mr", 
      :namefirstname => "george", 
      :addresscity => "nyc", 
      :acceptorganization => "false")

    hash = {
    :nametitle => "mr", 
    :namefirstname => "george", 
    :namemiddlename => "middlename", 
    :namelastname => "lastname", 
    :namesuffix => "suffix", 
    :addressaddress1 => "address1", 
    :addressaddress2 => "address2", 
    :addresscity => "nyc", 
    :addresscountryid => "countryid", 
    :addressprovinceid => "provinceid", 
    :addresspostalcode => "postalcode", 
    :emailaddressvalue => "emailaddress", 
    :secondaryemailaddressvalue => "secondaryemailaddress", 
    :mobileemailaddressvalue => "mobileemailaddress", 
    :homephonenumber => "homephone", 
    :workphonenumber => "workphone", 
    :workphoneextension => "extension", 
    :cellphonenumber => "cellphone", 
    :phonepreferenceid => "phonepreference", 
    :languageid => "language", 
    :acceptorganization => "false"
    }

    assert_equal hash, volunteer.to_h
  end

end
