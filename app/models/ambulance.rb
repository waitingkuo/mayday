class Ambulance < ActiveRecord::Base
  attr_accessible :category, :display_addr, :name, :poi_addr, :tel, :traffic_info, :x, :y
end
