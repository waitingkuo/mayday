class Officer < ActiveRecord::Base
  attr_accessible :content, :display_addr, :name, :poi_addr, :traffic_information, :x, :y
end
