require 'geokit'
include GeoKit::Geocoders
require 'cgi'

# encoding: UTF-8


#coords = MultiGeocoder.geocode "臺北市民族東路284號"
coords = Geokit::Geocoders::GoogleGeocoder.geocode(CGI.escape("台北市"))

puts coords.lat
puts coords.lng
