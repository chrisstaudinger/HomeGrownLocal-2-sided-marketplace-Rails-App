json.extract! item, :id, :item_category_id, :user_id, :name, :description, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
