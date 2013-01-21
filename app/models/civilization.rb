class Civilization < ActiveRecord::Base
  attr_accessible :name, :notes
  
  has_many :leaders
end
