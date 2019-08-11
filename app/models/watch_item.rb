class WatchItem < ApplicationRecord
  searchkick
  belongs_to :item
  belongs_to :watchlist
end
