class Lesson < ApplicationRecord

	# associations
	belongs_to :student
	belongs_to :user

	# validations:
  	validates :lesson_date, presence: true

end
