# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'net/http'
require 'JSON'

Ambulance.delete_all
Officer.delete_all
Help.delete_all

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


url = URI.parse('http://data.taipei.gov.tw/opendata/apply/json/NDdDMjFGMTEtQTI3OC00Qzg2LUJFQzAtMTg1QTMwMEQ1MjI2')
data_str = Net::HTTP.get(url.host, url.path)
data = JSON.load(data_str)

data.each do |d|
  d['x'] = 0.0
  d['y'] = 0.0
  d.delete('X')
  d.delete('Y')
  Officer.create(d)
end

Help.create({'name' => 'zoe', 'description' => 'help', 'x' => 25.067111, 'y' => 121.634302})
Help.create({'name' => 'zoe', 'description' => 'help', 'x' => 25.077111, 'y' => 121.644302})
Help.create({'name' => 'zoe', 'description' => 'help', 'x' => 25.087111, 'y' => 121.654302})
