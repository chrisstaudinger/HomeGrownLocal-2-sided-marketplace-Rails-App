json.extract! item_review, :id, :item_id, :message, :created_at, :updated_at
json.url item_review_url(item_review, format: :json)
