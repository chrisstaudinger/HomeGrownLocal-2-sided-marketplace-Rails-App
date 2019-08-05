class ItemReview < ApplicationRecord
  belongs_to :item
  belongs_to :reviewer, :class_name => 'User'
end
