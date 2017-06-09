json.extract! client, :id, :name, :registration_number, :course, :results, :created_at, :updated_at
json.url client_url(client, format: :json)
