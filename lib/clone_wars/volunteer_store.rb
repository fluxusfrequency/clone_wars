require 'sequel'

class VolunteerStore
  class << self

    def save(volunteer)
      volunteer_table.insert({
        "nametitle" => volunteer.nametitle,
        "namefirstname" => volunteer.namefirstname,
        "namemiddlename" => volunteer.namemiddlename,
        "namelastname" => volunteer.namelastname,
        "namesuffix" => volunteer.namesuffix,
        "addressaddress1" => volunteer.addressaddress1,
        "addressaddress2" => volunteer.addressaddress2,
        "addresscity" => volunteer.addresscity,
        "addresscountryid" => volunteer.addresscountryid,
        "addressprovinceid" => volunteer.addressprovinceid,
        "addresspostalcode" => volunteer.addresspostalcode,
        "emailaddressvalue" => volunteer.emailaddressvalue,
        "secondaryemailaddressvalue" => volunteer.secondaryemailaddressvalue,
        "mobileemailaddressvalue" => volunteer.mobileemailaddressvalue,
        "homephonenumber" => volunteer.homephonenumber,
        "workphonenumber" => volunteer.workphonenumber,
        "workphoneextension" => volunteer.workphoneextension,
        "cellphonenumber" => volunteer.cellphonenumber,
        "phonepreferenceid" => volunteer.phonepreferenceid,
        "languageid" => volunteer.languageid,
        "acceptorganization" => volunteer.acceptorganization
          })
    end

    def find(id)
      result = volunteer_table.where(:id => id).to_a.last
      Volunteer.new(
        {
        "nametitle" => result[:nametitle],
        "namefirstname" => result[:namefirstname],
        "namemiddlename" => result[:namemiddlename],
        "namelastname" => result[:namelastname],
        "namesuffix" => result[:namesuffix],
        "addressaddress1" => result[:addressaddress1],
        "addressaddress2" => result[:addressaddress2],
        "addresscity" => result[:addresscity],
        "addresscountryid" => result[:addresscountryid],
        "addressprovinceid" => result[:addressprovinceid],
        "addresspostalcode" => result[:addresspostalcode],
        "emailaddressvalue" => result[:emailaddressvalue],
        "secondaryemailaddressvalue" => result[:secondaryemailaddressvalue],
        "mobileemailaddressvalue" => result[:mobileemailaddressvalue],
        "homephonenumber" => result[:homephonenumber],
        "workphonenumber" => result[:workphonenumber],
        "workphoneextension" => result[:workphoneextension],
        "cellphonenumber" => result[:cellphonenumber],
        "phonepreferenceid" => result[:phonepreferenceid],
        "languageid" => result[:languageid],
        "acceptorganization" => result[:acceptorganization]
        }
        )
    end

    def update(volunteer, attributes)
      found = find(volunteer.id)
      new_volunteer = Volunteer.new(found.to_h.merge(attributes))
      delete(found)
      save(new_volunteer)
    end

    def delete(volunteer)
      volunteer_table.select(:id => volunteer.id).delete
    end

    def delete_all
      volunteer_table.delete
    end


    def database
      if ENV['RACK_ENV'] == 'test'
        @database ||= Sequel.sqlite('./test.sqlite3')
      else
        @database ||= Sequel.sqlite('./clone_wars.sqlite3')
      end
    end

    def volunteer_table
      database[:volunteers]
    end

    end
  end
