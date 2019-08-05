class Item < ApplicationRecord
  belongs_to :item_category
  belongs_to :user
  belongs_to :measurement
  has_many :watchitems
  has_many :watchlists, :through => :watchitems
  has_many :requests
  has_many :orders, :through => :requests
  has_many :item_reviews
<<<<<<< HEAD
=======

  has_one_attached :image
>>>>>>> 617984cb964b62a059387f6a530eee9b5ad7615e
end
