class Watchlist < ApplicationRecord
  belongs_to :user
  has_many :watchitems
  has_many :items, :through => :watchitems
end
