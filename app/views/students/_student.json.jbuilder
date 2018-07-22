json.extract! student, :id, :firstname, :lastname, :phone, :email, :dob, :experience, :interests, :lessontime, :created_at, :updated_at
json.url student_url(student, format: :json)
