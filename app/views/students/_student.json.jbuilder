json.extract! student, :id, :registration_number, :student_number, :name, :results, :created_at, :updated_at
json.url student_url(student, format: :json)
