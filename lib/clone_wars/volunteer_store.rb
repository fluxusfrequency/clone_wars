require 'sequel'

class VolunteerStore
  class << self

    def save(page)
      volunteer_table.insert({
        "nametitle" => nametitle,
        "namefirstname" => namefirstname,
        "namemiddlename" => namemiddlename,
        "namelastname" => namelastname,
        "namesuffix" => namesuffix,
        "addressaddress1" => addressaddress1,
        "addressaddress2" => addressaddress2,
        "addresscity" => addresscity,
        "addresscountryid" => addresscountryid,
        "addressprovinceid" => addressprovinceid,
        "addresspostalcode" => addresspostalcode,
        "emailaddressvalue" => emailaddressvalue,
        "secondaryemailaddressvalue" => secondaryemailaddressvalue,
        "mobileemailaddressvalue" => mobileemailaddressvalue,
        "homephonenumber" => homephonenumber,
        "workphonenumber" => workphonenumber,
        "workphoneextension" => workphoneextension,
        "cellphonenumber" => cellphonenumber,
        "phonepreferenceid" => phonepreferenceid,
        "languageid" => languageid,
        "acceptorganization" => acceptorganization
          })
    end

    def find(id)
      result = page_table.where(:id => id).to_a.last
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
      found = find(id)
      new_volunteer = Volunteer.new(found.to_h.merge(attributes))
      delete(found)
      save(new_volunteer)
    end

    def delete(volunteer)
      volunteer_table.select(:id => volunteer.id).delete
    end

    def delete_all
      page_volunteer.delete
    end


    def database
      if ENV['RACK_ENV'] == 'test'
        @database ||= Sequel.sqlite('./test.sqlite3')
      else
        @database ||= Sequel.sqlite('./clone_wars.sqlite3')
      end
    end

    def volunteer_table
      database[:volunteer]
    end

    end
  end
