class TeacherReminder
	@queue = :teacher_queue
	def self.perform(lesson_id)
		lesson = Lesson.find(lesson_id)
		LessonMailer.new_lesson(lesson).deliver_now
		
	end
end