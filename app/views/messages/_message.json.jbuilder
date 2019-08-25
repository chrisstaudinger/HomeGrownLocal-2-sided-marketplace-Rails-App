json.extract! message, :id, :conversation_id, :user_id, :message, :created_at, :updated_at
json.url message_url(message, format: :json)
