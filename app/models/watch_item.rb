class WatchItem < ApplicationRecord
  belongs_to :item
  belongs_to :watchlist
end
