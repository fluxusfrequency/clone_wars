class Volunteer

  attr_accessor :id,
                :nametitle,
                :namefirstname,
                :namemiddlename,
                :namelastname,
                :namesuffix,
                :addressaddress1,
                :addressaddress2,
                :addresscity,
                :addresscountryid,
                :addressprovinceid,
                :addresspostalcode,
                :emailaddressvalue,
                :secondaryemailaddressvalue,
                :mobileemailaddressvalue,
                :homephonenumber,
                :workphonenumber,
                :workphoneextension,
                :cellphonenumber,
                :phonepreferenceid,
                :languageid,
                :acceptorganization

  def initialize(attributes = {})
    @id                         = attributes[:id] || nil
    @nametitle                  = attributes[:nametitle] || "title"
    @namefirstname              = attributes[:namefirstname] || "firstname"
    @namemiddlename             = attributes[:namemiddlename] || "middlename"
    @namelastname               = attributes[:namelastname] || "lastname"
    @namesuffix                 = attributes[:namesuffix] || "suffix"
    @addressaddress1            = attributes[:addressaddress1] || "address1"
    @addressaddress2            = attributes[:addressaddress2] || "address2"
    @addresscity                = attributes[:addresscity] || "city"
    @addresscountryid           = attributes[:addresscountryid] || "countryid"
    @addressprovinceid          = attributes[:addressprovinceid] || "provinceid"
    @addresspostalcode          = attributes[:addresspostalcode] || "postalcode"
    @emailaddressvalue          = attributes[:emailaddressvalue] || "emailaddress"
    @secondaryemailaddressvalue = attributes[:secondaryemailaddressvalue] || "secondaryemailaddress"
    @mobileemailaddressvalue    = attributes[:mobileemailaddressvalue] || "mobileemailaddress"
    @homephonenumber            = attributes[:homephonenumber] || "homephone"
    @workphonenumber            = attributes[:workphonenumber] || "workphone"
    @workphoneextension         = attributes[:workphoneextension] || "extension"
    @cellphonenumber            = attributes[:cellphonenumber] || "cellphone"
    @phonepreferenceid          = attributes[:phonepreferenceid] || "phonepreference"
    @languageid                 = attributes[:languageid] || "language"
    @acceptorganization         = attributes[:acceptorganization] || "false"
  end

  def to_h
    {
      :nametitle => nametitle,
      :namefirstname => namefirstname,
      :namemiddlename => namemiddlename,
      :namelastname => namelastname,
      :namesuffix => namesuffix,
      :addressaddress1 => addressaddress1,
      :addressaddress2 => addressaddress2,
      :addresscity => addresscity,
      :addresscountryid => addresscountryid,
      :addressprovinceid => addressprovinceid,
      :addresspostalcode => addresspostalcode,
      :emailaddressvalue => emailaddressvalue,
      :secondaryemailaddressvalue => secondaryemailaddressvalue,
      :mobileemailaddressvalue => mobileemailaddressvalue,
      :homephonenumber => homephonenumber,
      :workphonenumber => workphonenumber,
      :workphoneextension => workphoneextension,
      :cellphonenumber => cellphonenumber,
      :phonepreferenceid => phonepreferenceid,
      :languageid => languageid,
      :acceptorganization => acceptorganization
    }
  end

end