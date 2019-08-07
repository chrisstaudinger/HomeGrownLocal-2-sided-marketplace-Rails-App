class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item
  # has_many :requests
  # has_many :items, :through => :requests
end
