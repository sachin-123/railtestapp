class Employee < ActiveRecord::Base
  # attr_accessible :title, :body
   attr_accessible :name, :salary
  
	validates_presence_of :name
	##validates_numericality_of :salary, :message=>"Error Message"
end
