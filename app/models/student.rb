class Student < ApplicationRecord

	# associations
	has_many :lessons
	
	def first_last_name
    "#{firstname} #{lastname}"
  	end

  	# validations:
  	validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
  	# less strict: .+@.+\.{1}.{2,}

end
