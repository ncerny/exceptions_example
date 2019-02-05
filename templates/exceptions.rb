# require 'ldap'

Ohai.plugin(:exceptions) do
  provides 'exceptions'

  collect_data do
    exceptions Mash.new
    # Do LDAP Query here

    # Relate LDAP query to approved exceptions
    # This will need to be some mechanism for relating the ldap data with a list of approved exceptions.
    # grant a policy exceptions for anything approved.  For example, ipv6:
    exceptions['ipv6'] = true

    # default everything else to false so that exceptions have to follow approval mechanisms.
    exceptions['ntpd'] = false
  end
end
