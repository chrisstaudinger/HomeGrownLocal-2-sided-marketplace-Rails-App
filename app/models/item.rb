class Item < ApplicationRecord
  belongs_to :item_category
  belongs_to :user
  has_many :watchitems
  has_many :watchlist, :through => :watchitems
  has_many :requests
  has_many :orders, :through => :requests

  has_one_attached :image
end
