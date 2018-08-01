class LessonMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lesson_mailer.new_lesson.subject
  #
  def new_lesson(lesson)
    @lesson = lesson
    @student = @lesson.student

    mail to: "kathrynmueller@gmail.com", subject: "New Lesson for #{@student.firstname}"
  end
end
