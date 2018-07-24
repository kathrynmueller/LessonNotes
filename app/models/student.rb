class Student < ApplicationRecord

	# associations
	has_many :lessons
	
	def first_last_name
    "#{firstname} #{lastname}"
  	end

end
