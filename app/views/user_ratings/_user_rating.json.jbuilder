json.extract! user_rating, :id, :reviewee_id, :reviewer_id, :rating, :created_at, :updated_at
json.url user_rating_url(user_rating, format: :json)
