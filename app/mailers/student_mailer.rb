class StudentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.new_lesson.subject
  #
  def new_lesson(lesson)
    @lesson = lesson
    @student = @lesson.student

    mail to: @student.email, subject: "New Lesson Reminder for you, #{@student.firstname}"
  end

end
