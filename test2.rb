require 'geocoder'

# -*- coding: UTF-8 -*-

location = Geocoder.search( '台灣' )
print location[0].latitude
print location[0].longitude
