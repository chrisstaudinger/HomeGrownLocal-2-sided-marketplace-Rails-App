json.extract! request, :id, :item_id, :order_id, :message, :quantity, :created_at, :updated_at
json.url request_url(request, format: :json)
