class Message < ApplicationRecord
  belongs_to :coversation
  belongs_to :user
end
