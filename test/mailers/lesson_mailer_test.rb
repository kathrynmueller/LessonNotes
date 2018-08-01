require 'test_helper'

class LessonMailerTest < ActionMailer::TestCase
  test "new_lesson" do
    mail = LessonMailer.new_lesson
    assert_equal "New lesson", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
