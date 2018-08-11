class StudentReminder
	@queue = :student_queue
	def self.perform(lesson_id)
		lesson = Lesson.find(lesson_id)
		StudentMailer.new_lesson(lesson).deliver_now
		
	end
end