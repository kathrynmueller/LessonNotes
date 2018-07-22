json.extract! lesson, :id, :status, :grade, :teachernote, :studentnote, :reminder, :nextlesson, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
