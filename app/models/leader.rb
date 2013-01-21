class Leader < ActiveRecord::Base
  attr_accessible :civilization_id, :name, :notes
  
  belongs_to :civilization
end
