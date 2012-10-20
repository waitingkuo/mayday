# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'net/http'
require 'JSON'

url = URI.parse('http://data.taipei.gov.tw/opendata/apply/json/MjQyOTI0NTctNjk4OC00MzYxLUFDNjgtREJGQkZEMDYxRkQ3')
data_str = Net::HTTP.get(url.host, url.path)

data = JSON.load(data_str)

data.each do |d|
  d['x'] = 0.0
  d['y'] = 0.0
  d.delete('X')
  d.delete('Y')
  Ambulance.create(d)
end

