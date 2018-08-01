# Preview all emails at http://localhost:3000/rails/mailers/lesson_mailer
class LessonMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/lesson_mailer/new_lesson
  def new_lesson
  	lesson = Lesson.last
    LessonMailer.new_lesson(lesson)
  end

end
