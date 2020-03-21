json.extract! user, :id, :name, :description, :avatar_link, :city_id, :created_at, :updated_at
json.url user_url(user, format: :json)
