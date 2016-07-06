class Home < ActiveRecord::Base
  attr_accessible :location, :name, :note, :owner, :size
end
