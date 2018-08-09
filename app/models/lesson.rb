class Lesson < ApplicationRecord

	# associations
	belongs_to :student
	belongs_to :user

end
